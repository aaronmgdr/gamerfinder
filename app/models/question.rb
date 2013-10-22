class Question < ActiveRecord::Base
  has_many :responses
  belongs_to :questions

  scope :game_questions, -> { where(type: 'Question::GlobalQuestion') }

  class GlobalQuestion < Question
  end

  class GameQuestion < Question
  end

end
