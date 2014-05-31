require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  should belong_to(:topic)
  should have_many(:answers)
end
