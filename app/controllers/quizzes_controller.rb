class QuizzesController < ApplicationController
  before_action :set_topic
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]

  # GET /quizzes
  # GET /quizzes.json
  def index
    # redirect to show or to new quiz path randomly
    if (rand * 10).to_i > 9
      redirect_to new_topics_quizzes_path(@topic)
    else
      # puts 'WHAT'
      # puts @topic.quizzes.all.inspect
      # puts @topic.inspect
      redirect_to topic_quiz_path(id: @topic.quizzes.first, topic_id: @topic)
    end
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new(topic: Topic.first)
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
    @quiz = Quiz.new(quiz_params.merge(topic: Topic.first))

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to topic_quiz_path(@quiz, @quiz.topic), notice: 'Quiz was successfully created.' }
        format.json { render :show, status: :created, location: topic_quiz_path(@quiz, @quiz.topic) }
      else
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to topic_quiz_path(@quiz, @quiz.topic), notice: 'Quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: topic_quiz_path(@quiz, @quiz.topic) }
      else
        format.html { render :edit }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_topic
    @topic = Topic.find(params[:topic_id])
  end

  def set_quiz
    @quiz = @topic.quizzes.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def quiz_params
    params.require(:quiz).permit(:question, :good_answer, :bad_answer)
  end

  # # GET /quizzes/1/edit
  # def edit
  # end

  # # DELETE /quizzes/1
  # # DELETE /quizzes/1.json
  # def destroy
  #   @quiz.destroy
  #   respond_to do |format|
  #     format.html { redirect_to topic_quizzes_path(@quiz.topic), notice: 'Quiz was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
end
