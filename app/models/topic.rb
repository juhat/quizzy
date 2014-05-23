require 'test_helper'

class Topic < ActiveRecord::Base
  has_many :quizzes
end
