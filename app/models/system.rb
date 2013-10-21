class System < ActiveRecord::Base
	has_many :system_preferences
	has_many :users, through: :system_preferences
end
