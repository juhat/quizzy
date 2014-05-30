require 'test_helper'

class QuizzesControllerTest < ActionController::TestCase
  setup do
    @topic = create(:topic_with_quizzes, quiz_count: 20)
    @quizzes = @topic.quizzes
    @quiz = @quizzes.first
  end

  # test "should get index" do
  #   get :index, topic_id: @topic
  #   assert_not_nil assigns(:topic)
  #
  #   # TODO: test redirect here
  # end

  test "should get new" do
    get :new, topic_id: @topic
    assert_response :success
  end

  test "should create quiz" do
    assert_difference('Quiz.count') do
      post :create, topic_id: @topic, quiz: { bad_answer: @quiz.bad_answer, good_answer: @quiz.good_answer, question: @quiz.question }
    end

    assert_redirected_to topic_quiz_path(assigns(:quiz), assigns(:quiz).topic)
  end

  test "should show quiz" do
    get :show, topic_id: @topic, id: @quiz
    assert_response :success
  end

  test "should update quiz" do
    patch :update, topic_id: @topic, id: @quiz, quiz: { bad_answer: @quiz.bad_answer, good_answer: @quiz.good_answer, question: @quiz.question }
    assert_redirected_to topic_quiz_path(assigns(:quiz), assigns(:quiz).topic)
  end

  # test "should get edit" do
  #   get :edit, topic_id: @topic, id: @quiz
  #   assert_response :success
  # end

  # test "should destroy quiz" do
  #   assert_difference('Quiz.count', -1) do
  #     delete :destroy, topic_id: @topic, id: @quiz
  #   end
  #
  #   assert_redirected_to topic_quizzes_path(topic_id: assigns(:quiz).topic.id)
  # end
end
