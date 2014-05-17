class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.text :question
      t.text :good_answer
      t.text :bad_answer

      t.timestamps
    end
  end
end
