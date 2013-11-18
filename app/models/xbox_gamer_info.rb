class XboxGamerInfo < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
=======

  #to run this as a test, within irb, run the following >> XboxGamerInfo.new.get_xbox_info
  #you won't get a userid, because this would actually be filled in during the user's current session



>>>>>>> nik-comments
end



