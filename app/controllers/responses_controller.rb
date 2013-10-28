class ResponsesController < ApplicationController


  def index
    @questions = Question.all
  end


  def show
    @responses = User.find(params[:user_id]).responses
  end


  def edit
    @questions = Question.all
    @responses = User.find(params[:user_id]).responses
  end

  def change
    @questions = Question.all
  end
end
