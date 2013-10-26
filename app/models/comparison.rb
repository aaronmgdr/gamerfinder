class Comparison < ActiveRecord::Base
  belongs_to :user
  belongs_to :compared_user, :class_name => "User"
end
