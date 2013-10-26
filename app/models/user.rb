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
  
  # Internal: Generates a score the user calling method against all other users.
  # Examples
  #
  #   compare_to_all
  #   # =>   '+----+---------------+---------+------------------+-------------------------+-------------------------+
            # | id | match_percent | user_id | compared_user_id | created_at              | updated_at              |
            # +----+---------------+---------+------------------+-------------------------+-------------------------+
            # | 1  | 0.5           | 1       | 2                | 2013-10-26 19:24:43 UTC | 2013-10-26 19:24:43 UTC |
            # | 4  | 0.5           | 2       | 3                | 2013-10-26 19:42:55 UTC | 2013-10-26 19:42:55 UTC |
            # | 5  | 0.25          | 2       | 4                | 2013-10-26 19:42:55 UTC | 2013-10-26 19:42:55 UTC |'
  #
  # Saves the results to the Comparisons Table 
  def compare_to_all
    User.all.each do |user_being_compared|
      #
      overlapping_answers = self.answers & user_being_compared.answers
      value = (overlapping_answers.length.to_f / answers.length.to_f)

      #Ensures user comparison with itself is not save to DB
      unless self.id == user_being_compared.id
        #Updates the record if it exists, otherwise creates a new association
        if Comparison.where(user_id:"#{self.id}", compared_user_id: "#{user_being_compared.id}").exists?          
          User.find(self.id).comparisons.find_by_compared_user_id(user_being_compared.id).update(match_percent: "#{value}")
        else
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
end