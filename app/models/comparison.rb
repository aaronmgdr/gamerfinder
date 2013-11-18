class Comparison < ActiveRecord::Base
  belongs_to :user
  belongs_to :compared_user, :class_name => "User"

  def self.quick_populate
    #step 1) All comparisons are deleted.  Comparisons are the actual match percentage (in decimal value) for one user to the next.  

    #step 2) Run the compare_to_all method against every user in the db. e.g. me vs. everyone.  next person vs. everyone etc... Counter is used for this.  Once the counter hits the last user, method is no longer executed. This method is run both in the seeds.rb file as well as when a user bulk_update his/her question responses.


    Comparison.delete_all

    i=1
    while i <= User.count
      User.find(i).compare_to_all
      i += 1
    end
  end
end

