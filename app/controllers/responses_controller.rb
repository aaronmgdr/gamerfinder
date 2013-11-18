class ResponsesController < ApplicationController


  def index
    @questions = Question.all
  end


  def show
    @responses = User.find(params[:user_id]).responses
  end


  # def edit
  #   Ideally, this should be used vs. non-RESTful "bulk_update". 
  #   bulk_update method is used for both editing one's responses as well as creating first-time new response. 
  
  #   @questions = Question.all
  #   @responses = User.find(params[:user_id]).responses
  # end

  def change
    @questions = Question.all
    @responses = Response.all
  end

  def bulk_update
    # this is hard coded - must add as many possibilities as there are questions in seed
    # Step 1)  Upon execution of bulk_update, all of users's answers are deleted
    # Step 2)  For the active user, create a response (user's answer choice to question) for the specific question. This functionality requires an answer to every question.  This is NOT how we would like the update function to run.  Note: Answer0 = choice to question 1, Answer9 = choice to question 10.  Again, not ideal, but we were running short on time. 
    # Step 3) Once the response choices have been recorded, rerun the quick_populate method.  This method runs for all users, even though only one user might have updated response choices. This made sense to us, as changing one's answers has an effect on the whole community.  


      Response.delete_all("user_id = #{params[:user_id]}")
      Response.create(user_id: params[:user_id], answer_id: params[:answer0])
      Response.create(user_id: params[:user_id], answer_id: params[:answer1])
      Response.create(user_id: params[:user_id], answer_id: params[:answer2])
      Response.create(user_id: params[:user_id], answer_id: params[:answer3])
      Response.create(user_id: params[:user_id], answer_id: params[:answer4])
      Response.create(user_id: params[:user_id], answer_id: params[:answer5])
      Response.create(user_id: params[:user_id], answer_id: params[:answer6])
      Response.create(user_id: params[:user_id], answer_id: params[:answer7])
      Response.create(user_id: params[:user_id], answer_id: params[:answer8])
      Response.create(user_id: params[:user_id], answer_id: params[:answer9])

      Comparison.quick_populate
      redirect_to users_url()
  end
end

 