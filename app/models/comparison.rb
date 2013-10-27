class Comparison < ActiveRecord::Base
  belongs_to :user
  belongs_to :compared_user, :class_name => "User"

  def self.quick_populate
    Comparison.delete_all

    i=1
    while i < User.count
      User.find(i).compare_to_all
      i += 1
    end
  end
end

