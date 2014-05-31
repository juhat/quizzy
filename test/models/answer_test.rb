require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  should belong_to(:quiz)
  should belong_to(:user)
  should validate_presence_of :quiz_id
  should validate_presence_of :user_id
end
