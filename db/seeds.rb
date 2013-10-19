# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "is it working?"
users = User.create([
	{
		password: "password", 
		email: "mike@mike.mike", 
		tag: "mikeftw", 
		style: 5, 
		age: 14, 
		region: "Austin, TX", 
		contact: "SteamID: Helix386", 
		bfclass: "Assault", 
		availability: "anytime anywhere bitch", 
		system: "PC"
	}, 
	{
		password: "password2", 
		email: "fremen@fremen.fremen", 
		tag: "xXx_frem_xXx", 
		style: 1, 
		age: 12, 
		region: "Austin, TX", 
		contact: "XboxLiveID: DasFremenator", 
		bfclass: "Engineer", 
		availability: "Tuesday before bedtime", 
		system: "Xbox 360" 
	}
])

