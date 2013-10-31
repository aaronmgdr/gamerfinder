class ResponsesController < ApplicationController


  def index
    @questions = Question.all
  end


  def show
    @responses = User.find(params[:user_id]).responses
  end


  # def edit
  #   @questions = Question.all
  #   @responses = User.find(params[:user_id]).responses
  # end

  def change
    @questions = Question.all
    @responses = Response.all
  end

  def bulk_update
    # Response.create(user_id: params[:user_id], answer_id: 2)
    Response.update(user_id: params[:user_id], answer_id: 2)
  end


end

# [
#     {user: user, answer: Answer.find(Random.rand(1..3))},
#     {user: user, answer: Answer.find(Random.rand(4..6))},
#     {user: user, answer: Answer.find(Random.rand(7..9))},
#     {user: user, answer: Answer.find(Random.rand(10..12))}
#   ]
