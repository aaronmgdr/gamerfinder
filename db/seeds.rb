# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

questions = Question.create([
	{inquiry: 'When do you play'},
	{inquiry: 'What position do you want to your teammate to play'},
	{inquiry: 'Which style do not want your teammate to play'},
	{inquiry: 'Which will you not play'}
	])

puts "q"

answers_array = [
	"sometimes",
	"runing and gunning",
	"shotguns only",
	"peace love and...",
	]
puts "aa"



puts "loop 1"

users = User.create([
	{
		password: "password",
		email: "mike@mike.mike",
		age_range: 1,
		city: "Alice Springs",
		country: "Australia",
	},
	{
		password: "password2",
		email: "fremen@fremen.fremen",
		age_range: 2,
		city: "Brussel",
		country: "Belgium"
	},
	{
		password: "password3",
		email: "yaz@yaz.yaz",
		age_range: 3,
		city: "Calgary",
		country: "Canada",
	},
	{
		password: "password4",
		email: "lynda@lynda.lynda",
		age_range: 2,
		city: "Tyler",
		state: "Texas",
		country: "USA",
	},
	{
		password: "password5",
		email: "greg@greg.greg",
		age_range: 3,
		city: "Calgary",
		country: "Canada",
	},
	{
		password: "password6",
		email: "amy@amy.amy",
		age_range: 4,
		city: "Brussel",
		country: "Belgium",
	},
	{
		password: "password8",
		email: "clay@clay.clay",
		age_range: 1,
		city: "Brugge",
		country: "Belgium",
	}
])

puts "u"

questions.each do |question|
	puts  question.id
	Answer.create(choice: answers_array[Random.rand(1..4)])
end

users.each do |user|
	Response.create(user: user, answer: Answer.find(Random.rand(1..4)))
end


