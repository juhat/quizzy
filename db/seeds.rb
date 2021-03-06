# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Topic.delete_all
Quiz.delete_all
User.delete_all

FactoryGirl.create_list(:topic_with_quizzes, 5, quiz_count: 10)
FactoryGirl.create(:user)