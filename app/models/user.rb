class User < ActiveRecord::Base
  has_many :responses
  has_many :answers, through: :responses

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.search(search)
    if search
      find(:all, :conditions => ['systems Like ?', "%#{search}%"])
    else
      find(:all)
    end
  end

  # takes users' system(s) and finds all users with >1 in common
  #
end
