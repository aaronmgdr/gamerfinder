class UsersController < ApplicationController
	def index
		@users = User.search(params[:search])
	end

	def match



	end

	def get_system(sys)
		@matches = User.where('system=?', sys)
  end
end
