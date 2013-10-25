class Question < ActiveRecord::Base
  has_many :answers
  has_many :responses, through: :answers
  has_many :users, through: :responses

end



