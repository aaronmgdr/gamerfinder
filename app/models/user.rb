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

  # this makes the Mailboxer messaging work
  acts_as_messageable

  # to get mailboxer to send actual emails this needs to return an email address if the user has one
  def mailboxer_email(object)
    false
  end

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

# Internal: Compares the users answers against all other users answers
  # Examples
  #
  #   User.first.compare_to_all
  #   # 
  #
  # Populates comparision table with user_id, %, compared_user_id
#
  # !!!
  # This compare_to all method should be rewritten to update attributes
  # rather than just creating new ones, until then…
  # Before running compare_to_all, run >>  Comparison.delete_all
  def compare_to_all
    User.all.each do |user_being_compared|
      
      #no need to compare a user to itself
      unless self.id == user_being_compared.id 
        
        # creates a new array where user's response == other user response
        overlapping_answers = self.answers & user_being_compared.answers
        
        # by finding the number of answers that are the same
        # we can divide this by the total possible answers to get the 
        # % that are the same, and thus infer how compatible the gamers are. 
        value = (overlapping_answers.length.to_f / answers.length.to_f)
        Comparison.create(
          user_id:"#{self.id}",
          compared_user_id: "#{user_being_compared.id}",
          match_percent: "#{value}"
        )
      end

      #this can probably be taken out.
      return Comparison.all
    
    end
    
  end
  #mike 
  def self.last_four
    @reversed_users = User.all.sort.reverse
    return @reversed_users.slice(0,4)
  end

end

