class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :quiz

  validates :quiz_id, :user_id, presence: true
end
