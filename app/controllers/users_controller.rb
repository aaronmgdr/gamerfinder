class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


	def index
		@users = User.all
	end

  def show
    @user = User.find(params[:id])
    @sorted_matches = User.find(params[:id]).comparisons.order('match_percent').reverse
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  end

  private
   # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

end


