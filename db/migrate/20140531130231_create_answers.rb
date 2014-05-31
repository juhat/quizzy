class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :quiz_id
      t.boolean :correctness

      t.timestamps
    end
  end
end
