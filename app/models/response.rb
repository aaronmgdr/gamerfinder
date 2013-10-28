class Response < ActiveRecord::Base
  belongs_to :answer
  belongs_to :user

  attr_accessor :user_id, :answer_id
end
