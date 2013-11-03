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
    # Response.update(user_id: params[:user_id], answer_id: 2)

      # Response.where('user_id=current_user').delete_all

      Response.delete_all("user_id = #{params[:user_id]}")
      Response.create(user_id: params[:user_id], answer_id: params[:answer0])
      Response.create(user_id: params[:user_id], answer_id: params[:answer1])
      Response.create(user_id: params[:user_id], answer_id: params[:answer2])
      Response.create(user_id: params[:user_id], answer_id: params[:answer3])
      Comparison.quick_populate
      redirect_to users_url()


  end
end

    # I want to bulk_update all the users question responses
    # On this page, go through each of the answer responses and
    # update the users.response record to include the user_id with the answer_id



# [
#     {user: user, answer: Answer.find(Random.rand(1..3))},
#     {user: user, answer: Answer.find(Random.rand(4..6))},
#     {user: user, answer: Answer.find(Random.rand(7..9))},
#     {user: user, answer: Answer.find(Random.rand(10..12))}
#   ]
