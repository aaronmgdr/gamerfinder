class XboxGamerInfo < ActiveRecord::Base
  belongs_to :user

  #to run this as a test, within irb, run the following >> XboxGamerInfo.new.get_xbox_info
  #you won't get a userid, because this would actually be filled in during the user's current session


  #this method is for the okgamer prototype only. Because we're focusing
  # def hasGTAV?
  #   @gta_instance = false
  #   #stores nested hash values array of key:value[recentactivity] into variable. Then converts array of hashes into a downcase string for search ease.
  #   recent_activity = xboxprofile["recentactivity"]
  #   string_recent_activity = recent_activity.to_s.downcase!

  #   #looking for hard-coded literal to indicate presence of game
  #   if string_recent_activity.include? "grand theft auto v"
  #     @gta_instance = true
  #   else
  #     #if
  #     @gta_instance = false
  #   end
  # end

end



