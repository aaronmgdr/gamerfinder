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
	{inquiry: "What's your favorite type of online game type"},
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

# users = User.create([
#   {
#     name: "MikeFTW",
#     password: "password",
#     email: "mike@mike.mike",
#     xbox_gamer_info: XboxGamerInfo.find(3)
#   },
#   {
#     name: "xXx_dasFremenator_xXx",
#     password: "password",
#     email: "fremen@fremen.fremen",

#   },
#   {
#     name: "Daftstar",
#     password: "password",
#     email: "nik@nik.nik",
#     xbox_gamer_info: XboxGamerInfo.find(1)
#   },
#   {
#     name: "Gamble",
#     password: "password",
#     email: "gamble@gamble.gamble",
#     xbox_gamer_info: XboxGamerInfo.find(4)


#   },
#   {
#     name: "Lynda",
#     password: "password",
#     email: "lynda@lynda.lynda",
#   },
#   {
#     name: "Ami",
#     password: "password",
#     email: "ami@ami.ami",
#   },
#   {
#     name: "Joe",
#     password: "password",
#     email: "joe@joe.joe",

#   },
#   {
#     name: "Taylor",
#     password: "password",
#     email: "taylor@taylor.taylor",
#     xbox_gamer_info: XboxGamerInfo.find(6)
#   },
#   {
#     name: "Clay",
#     password: "password",
#     email: "clay@clay.clay",
#     xbox_gamer_info: XboxGamerInfo.find(5)
#   },
#   {
#     name: "Matt",
#     password: "password",
#     email: "matt@matt.matt",
#     xbox_gamer_info: XboxGamerInfo.find(2)
#   },
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
# ])

# users.each do |user|
#   Response.create([
#     {user: user, answer: Answer.find(Random.rand(1..3))},
#     {user: user, answer: Answer.find(Random.rand(4..6))},
#     {user: user, answer: Answer.find(Random.rand(7..9))},
#     {user: user, answer: Answer.find(Random.rand(10..12))},
#   ])
# end

# Comparison.quick_populate





