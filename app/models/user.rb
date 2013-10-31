class User < ActiveRecord::Base
  has_many :responses
  has_many :answers, through: :responses
  has_many :questions, through: :answers
  has_many :comparisons
  has_many :compared_users, :through => :comparisons
  has_many :games
  has_many :titles, through: :games
  has_many :platforms, through: :games
  has_one  :xbox_gamer_info

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # Internal: Gets calling users answers to all questions sorted lowest to highest
  # Examples
  #
  #   answers
  #   # => '[1,4,9,11]'
  #
  # Returns an Array of Integers

  def answers
    self.responses.pluck(:answer_id).sort
  end


# Before running compare_to_all, run >>  Comparison.delete_all
  def compare_to_all
    User.all.each do |user_being_compared|
      unless self.id == user_being_compared.id
        overlapping_answers = self.answers & user_being_compared.answers
        value = (overlapping_answers.length.to_f / answers.length.to_f)
        Comparison.create(
          user_id:"#{self.id}",
          compared_user_id: "#{user_being_compared.id}",
          match_percent: "#{value}"
        )
      end
    end
    return Comparison.all
  end
end
