require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  should belong_to(:topic)

  # test "the truth" do
  #   assert true
  # end
end
