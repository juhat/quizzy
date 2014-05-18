class Topic < ActiveRecord::Base
  has_many :quizzes
end
