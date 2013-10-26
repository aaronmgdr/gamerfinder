class UsersController < ApplicationController
	def index
		@users = User.all
	end

  def show
    @user = User.find(params[:id])
    @sorted_matches = User.find(params[:id]).comparisons.order('match_percent').reverse
  end
end
