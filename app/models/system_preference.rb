class SystemPreference < ActiveRecord::Base
	belongs_to :user
	belongs_to :system
end