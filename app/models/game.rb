class Game < ActiveRecord::Base
	has_many :platforms
	has_many :users, through: :platforms
end
