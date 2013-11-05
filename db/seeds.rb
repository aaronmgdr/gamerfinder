# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create([
	{inquiry: 'When do you play'},
	{inquiry: 'What position do you want to your teammate to play'},
	{inquiry: 'What is your age range'},
	{inquiry: 'What time zone'}
])

XboxGamerInfo.create([
	{
		gamertag: "daft star"
	},
	{
		gamertag: "metasplat"
	},
	{
		gamertag: "anthror"
	},
	{
		gamertag: "AlCapwn715"
	},
	{
		gamertag: "Clamstew"
	},
	{
		gamertag: "walkersmith07"
	},
	{
		gamertag: "ramariel"
	},
	{
		gamertag: "praisethecow33"
	}
])

users = User.create([
	{
		name: "MikeFTW",
		password: "password",
		email: "mike@mike.mike",
		xbox_gamer_info: XboxGamerInfo.find(3)
	},
	{
		name: "xXx_dasFremenator_xXx",
		password: "password",
		email: "fremen@fremen.fremen",

	},
	{
		name: "Daftstar",
		password: "password",
		email: "nik@nik.nik",
		xbox_gamer_info: XboxGamerInfo.find(1)
	},
	{
		name: "Gamble",
		password: "password",
		email: "gamble@gamble.gamble",
		xbox_gamer_info: XboxGamerInfo.find(4)


	},
	{
		name: "Lynda",
		password: "password",
		email: "lynda@lynda.lynda",
	},
	{
		name: "Ami",
		password: "password",
		email: "ami@ami.ami",
	},
	{
		name: "Joe",
		password: "password",
		email: "joe@joe.joe",

	},
	{
		name: "Taylor",
		password: "password",
		email: "taylor@taylor.taylor",
		xbox_gamer_info: XboxGamerInfo.find(6)
	},
  {
		name: "Clay",
		password: "password",
		email: "clay@clay.clay",
		xbox_gamer_info: XboxGamerInfo.find(5)
	},
	{
		name: "Matt",
		password: "password",
		email: "matt@matt.matt",
		xbox_gamer_info: XboxGamerInfo.find(2)
	},
	{
		name: "Christina",
		password: "password",
		email: "chris@chris.chris",
		xbox_gamer_info: XboxGamerInfo.find(7)
	},
	{
		name: "Ravi",
		password: "password",
		email: "ravi@ravi.ravi",
		xbox_gamer_info: XboxGamerInfo.find(8)
	}
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
    {user: user, answer: Answer.find(Random.rand(10..12))},
  ])
end

Comparison.quick_populate





