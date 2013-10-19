class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # takes in a users playing style and finds all players with a style within 1 degree
  def style_match

  end

  # takes users' system(s) and finds all users with >1 in common
  #
  def system_match(system)
  	User.find_by_system(system)
  end

end
