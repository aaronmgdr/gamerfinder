class Answer < ActiveRecord::Base
  belongs_to :question
  has_many   :responses
  has_many  :users, through: :responses


  accepts_nested_attributes_for :question
end
