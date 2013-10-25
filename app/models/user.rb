class User < ActiveRecord::Base
  has_many :responses
  has_many :answers, through: :responses
  has_many :questions, through: :answers

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def answers
    # this picks the users's responses for all questions - returns an array of answers
    self.responses.pluck(:answer_id)
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


  def compare_to_all
    users = User.all
    @similarity = Hash.new {}
    puts self.email
    users.each do |looped_user|
      puts "#{looped_user.email} answers #{looped_user.answers}"
      answer_array_comparer(self.answers,looped_user.answers)
      


      # puts "in Both #{overlap}"

      # likeness = overlap.length.to_f / looped_user.answers.length.to_f

      # puts "They are #{likeness*100}% similar"

      @similarity["#{looped_user.email}"] = @likeness
    end
    return @similarity
  end

  private

  # takes in both person's arrays.  
  def answer_array_comparer(my_array, their_array)
    #overlapping_answers = only overlapped answers
    overlapping_answers = my_array & their_array
    #returns percent similarity between user a & user b
    @likeness = (overlapping_answers.length.to_f / my_array.length.to_f)*100
  end
end
