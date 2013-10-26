class User < ActiveRecord::Base
  has_many :responses
  has_many :answers, through: :responses
  has_many :questions, through: :answers
  has_many :comparisons
  has_many :compared_users, :through => :comparisons

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def answers
    # this picks the users's responses for all questions - returns an array of answers
    self.responses.pluck(:answer_id)
  end


  def compare_to_all
    similarity = {}
    User.all.each do |looped_user|
      overlapping_answers = self.answers & looped_user.answers
      value = (overlapping_answers.length.to_f / answers.length.to_f)

      unless self.id == looped_user.id
        if Comparison.where(user_id:"#{self.id}", compared_user_id: "#{looped_user.id}").exists?
          puts"update"          
          User.find(self.id).comparisons.find_by_compared_user_id(looped_user.id).update(match_percent: "#{value}")
        else
         puts "create"
          Comparison.create(
            user_id:"#{self.id}", 
            compared_user_id: "#{looped_user.id}",
            match_percent: "#{value}"
          )
        end    
      end
    end
  end
end



# -------------------------------------------------------------
  # This was originally built to help build compare_to_all
  # def compare(user_id)
  #   # my answers
  #   mine = self.answers

  #   #next person's answers
  #   # theirs= User.find(user_id).responses.pluck(:answer_id)
  #   theirs= User.find(user_id).answers
  #   answer_array_comparer(mine, theirs)
  # end
  # -------------------------------------------------------------
