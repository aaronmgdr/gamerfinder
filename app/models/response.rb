class Response < ActiveRecord::Base
  belongs_to :answer
  belongs_to :user


  def edit
    @responses = Response.all
  end

  
end
