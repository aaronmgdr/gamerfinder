class User < ActiveRecord::Base
  has_many :responses
  has_many :answers, through: :responses
  has_many :questions, through: :answers

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # def self.search(search)
  #   if search
  #     find(:all, :conditions => ['systems Like ?', "%#{search}%"])
  #   else
  #     find(:all)
  #   end
  # end

  def answers
    self.responses.pluck(:answer_id)
  end

  def compare(user_id)
    mine = self.answers
    theirs= User.find(user_id).responses.pluck(:answer_id)

    answer_array_comparer(mine, theirs)
  end

  def compare_to_all
    users = User.all
    @similarity = Hash.new {}
    likeness = []

    users.each do |looped_user|
     puts "#{looped_user.email} answers #{looped_user.answers}"
     overlap = self.answers & looped_user.answers
     puts "in Both #{overlap}"

    likeness = overlap.length.to_f / looped_user.answers.length.to_f

    puts "They are #{likeness*100}% similar"

      @similarity["#{looped_user.email}"] = likeness
    end
    return @similarity
  end

  private

  def answer_array_comparer(my_array, their_array)
    overlaping_answers = my_array & their_array
    likeness = overlaping_answers.length.to_f / my_array.length.to_f
  end
end
