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
	{inquiry: 'What is your age range'},
	{inquiry: 'What time zone'}
])

users = User.create([
	{
		password: "password",
		email: "mike@mike.mike",
		},
	{
		password: "password2",
		email: "fremen@fremen.fremen",

			},
	{
		password: "password3",
		email: "yaz@yaz.yaz",

			},
	{
		password: "password4",
		email: "lynda@lynda.lynda",
	}
	# {
	# 	password: "password5",
	# 	email: "greg@greg.greg",
	# 		},
	# {
	# 	password: "password6",
	# 	email: "amy@amy.amy",

	# },
	# {
	# 	password: "password8",
	# 	email: "clay@clay.clay",
	# 		}
])

Question.first.answers.create(choice: "morning")
Question.first.answers.create(choice: "afternoon")
Question.first.answers.create(choice: "evening")

Question.find(2).answers.create(choice: "assault")
Question.find(2).answers.create(choice: "engineer")
Question.find(2).answers.create(choice: "medic")

Question.find(3).answers.create(choice: "young")
Question.find(3).answers.create(choice: "middle-aged")
Question.find(3).answers.create(choice: "old")

Question.find(4).answers.create(choice: "Eastern")
Question.find(4).answers.create(choice: "Central")
Question.find(4).answers.create(choice: "Hawaiian")

users.each do |user|
	Response.create([
		{user: user, answer: Answer.find(Random.rand(1..3))},
		{user: user, answer: Answer.find(Random.rand(4..6))},
		{user: user, answer: Answer.find(Random.rand(7..9))},
		{user: user, answer: Answer.find(Random.rand(10..12))}
	])
end




