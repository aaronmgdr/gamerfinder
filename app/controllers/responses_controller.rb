class ResponsesController < ApplicationController

  # shows what th
  def index
  @responses = User.find(params[:user_id]).responses
  end


  def show

  end


  def edit

  end


  def update

  end


  def delete

  end



end
