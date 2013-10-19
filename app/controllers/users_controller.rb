class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def match

	end
end
