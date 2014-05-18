require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  should have_many(:quizzes)
  # test "the truth" do
  #   assert true
  # end
end
