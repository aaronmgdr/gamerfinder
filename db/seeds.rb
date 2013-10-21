# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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
	},
	{
		password: "password3", 
		email: "yaz@yaz.yaz", 
		tag: "Yasmin", 
		style: 2, 
		age: 22, 
		region: "Austin, TX", 
		contact: "XboxLiveID: Yaz", 
		bfclass: "Support", 
		availability: "Not very often", 
		system: "Xbox 360" 
	},
	{
		password: "password4", 
		email: "lynda@lynda.lynda", 
		tag: "Lynda", 
		style: 4, 
		age: 21, 
		region: "Austin, TX", 
		contact: "PSNID: Lynda", 
		bfclass: "Assault", 
		availability: "Not very often", 
		system: "Playstation" 
	},
	{
		password: "password5", 
		email: "greg@greg.greg", 
		tag: "Greg", 
		style: 1, 
		age: 21, 
		region: "Austin, TX", 
		contact: "PSNID: Greg", 
		bfclass: "Recon", 
		availability: "Sometimes", 
		system: "Playstation" 
	},
	{
		password: "password6", 
		email: "amy@amy.amy", 
		tag: "Amy", 
		style: 3, 
		age: 21, 
		region: "Austin, TX", 
		contact: "SteamID: Amy", 
		bfclass: "Engineer", 
		availability: "Sometimes", 
		system: "PC" 
	},
	{
		password: "password7", 
		email: "gamble@gamble.gamble", 
		tag: "Gamble", 
		style: 5, 
		age: 21, 
		region: "Austin, TX", 
		contact: "XboxLiveID: Gamble", 
		bfclass: "Assault", 
		availability: "All the time", 
		system: "Xbox 360" 
	},
	{
		password: "password8", 
		email: "clay@clay.clay", 
		tag: "Clay", 
		style: 5, 
		age: 21, 
		region: "Austin, TX", 
		contact: "PSNID: Clay", 
		bfclass: "Assault", 
		availability: "Sure", 
		system: "Playstation" 
	}
])

