require 'test_helper'

class GoToPlayTest < Capybara::Rails::TestCase
  setup do
    @topics = create_list(:topic_with_quizzes, 20, quiz_count: 20)
  end

  test "Home page" do
    visit "/"

    assert page.has_content?("Quizzy")
    assert page.has_content?("What's your topic?")
  end

  test "Let's visit a topic page" do
    visit "/"

    topic_name = first('.list-group-item h2 > a').native.text
    first('.list-group-item h2 > a').click
    assert page.has_content?(topic_name)
    assert page.has_content?("Start playing!")
  end

  test "Start the quiz" do
    visit topic_quizzes_path(@topics.first) #"/topics/#{@topics.first.id}/quizzes"

    # topic_name = first('.list-group-item h2 > a').native.text
    # first('.list-group-item h2 > a').click
    # assert page.has_content?( @topics.first.name )
    # assert page.has_content?("Start playing!")

    # click_link("Start playing!")
  end

end
