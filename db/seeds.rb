# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create([
	{inquiry: 'Do you regularly game with a headset/mic'},
	{inquiry: "What's your age range"},
	{inquiry: "You've just started playing GTA V. People are running around everywhere. What do you do "},
	{inquiry: "What's your favorite GTA Mode"},
  {inquiry: "What's your favorite thing to do when roaming around"},
  {inquiry: "How many people do you like to collaborate / team-up with"},
  {inquiry: "How frequently do you play GTA V"},
  {inquiry: "You have 14 opponents in front of you, what's your weapon of choice"},
  {inquiry: "What's your favorite explosive type"},
  {inquiry: "You've found yourself in a race with 16 players. What do you do"}
])


Question.first.answers.create(choice: "yes")
Question.first.answers.create(choice: "no")


Question.find(2).answers.create(choice: "12-16")
Question.find(2).answers.create(choice: "17-21")
Question.find(2).answers.create(choice: "22-30")
Question.find(2).answers.create(choice: "31-40")
Question.find(2).answers.create(choice: "41+")


Question.find(3).answers.create(choice: "Explore the world")
Question.find(3).answers.create(choice: "Havoc - burn it all down!")
Question.find(3).answers.create(choice: "Jump into a mission")
Question.find(3).answers.create(choice: "Chase after players")
Question.find(3).answers.create(choice: "Earn cash")


Question.find(4).answers.create(choice: "Survival")
Question.find(4).answers.create(choice: "Deathmatch")
Question.find(4).answers.create(choice: "Racing")
Question.find(4).answers.create(choice: "Mission")


Question.find(5).answers.create(choice: "Cruise around")
Question.find(5).answers.create(choice: "Steal a cop car and chase down players")
Question.find(5).answers.create(choice: "Cause havoc everywhere")
Question.find(5).answers.create(choice: "Los Santos activities - e.g: tennis, golf")
Question.find(5).answers.create(choice: "Hunt down players")
Question.find(5).answers.create(choice: "All of the above")


Question.find(6).answers.create(choice: "1 person")
Question.find(6).answers.create(choice: "A few people")
Question.find(6).answers.create(choice: "As many as possible")



Question.find(7).answers.create(choice: "once a week")
Question.find(7).answers.create(choice: "Several times a week")
Question.find(7).answers.create(choice: "As much as possible")
Question.find(7).answers.create(choice: "GTA is basically all that I do")


Question.find(8).answers.create(choice: "Sniper Rifle")
Question.find(8).answers.create(choice: "Shotgun")
Question.find(8).answers.create(choice: "Pistol")
Question.find(8).answers.create(choice: "Hand-To-Hand combat")
Question.find(8).answers.create(choice: "Assault Rifle")
Question.find(8).answers.create(choice: "RPG")
Question.find(8).answers.create(choice: "Lots and lots of profanity")


Question.find(9).answers.create(choice: "Grenades")
Question.find(9).answers.create(choice: "Jerry Cans")
Question.find(9).answers.create(choice: "Sticky Bombs")


Question.find(10).answers.create(choice: "Avoid collisions at all costs")
Question.find(10).answers.create(choice: "You hit me, I hit you")
Question.find(10).answers.create(choice: "Keep your distance, or feel the pain")
Question.find(10).answers.create(choice: "I see you, I hunt you")

users = User.create([
  {
    name: "ElephantRemembers",
    password: "password",
    email: "mike@okgamer.co",
  },
  {
    name: "dasFremenator",
    password: "password",
    email: "fremen@okgamer.co",

  },
  {
    name: "daftphunk",
    password: "password",
    email: "nik@okgamer.co",
  },
  {
    name: "Gamble",
    password: "password",
    email: "gamble@okgamer.co",
  },
  {
    name: "Lynda",
    password: "password",
    email: "lynda@okgamer.co",
  },
  {
    name: "Ami_Free",
    password: "password",
    email: "ami@okgamer.co",
  },
  {
    name: "meanderingJoe",
    password: "password",
    email: "joe@okgamer.co",

  },
  {
    name: "RunRunRunGoose",
    password: "password",
    email: "taylor@okgamer.co",

  },
  {
    name: "MeltingClay",
    password: "password",
    email: "clay@clayokgamer.co",

  },
  {
    name: "Mankus",
    password: "password",
    email: "matt@mokgamer.co",
  }
#   {
#     name: "Christina",
#     password: "password",
#     email: "chris@chris.chris",
#     xbox_gamer_info: XboxGamerInfo.find(7)
#   },
#   {
#     name: "Ravi",
#     password: "password",
#     email: "ravi@ravi.ravi",
#     xbox_gamer_info: XboxGamerInfo.find(8)
#   }
])

users.each do |user|
  Response.create([
    {user: user, answer: Answer.find(Random.rand(1..2))},
    {user: user, answer: Answer.find(Random.rand(3..7))},
    {user: user, answer: Answer.find(Random.rand(8..12))},
    {user: user, answer: Answer.find(Random.rand(13..16))},
    {user: user, answer: Answer.find(Random.rand(17..22))},

    {user: user, answer: Answer.find(Random.rand(23..25))},
    {user: user, answer: Answer.find(Random.rand(26..29))},
    {user: user, answer: Answer.find(Random.rand(30..36))},
    {user: user, answer: Answer.find(Random.rand(37..39))},
    {user: user, answer: Answer.find(Random.rand(40..43))}
  ])
end

Comparison.quick_populate





