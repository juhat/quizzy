class AddTopicToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :topic_id, :integer
  end
end
