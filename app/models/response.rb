class Response < ActiveRecord::Base
  belongs_to :answer
  belongs_to :user
  has_one :question, through: :answer

  def edit
    @responses = Response.all
  end
end
