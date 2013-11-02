class XboxGamerInfo < ActiveRecord::Base
  belongs_to :user

  #to run this as a test, within irb, run the following >> XboxGamerInfo.new.get_xbox_info
  #you won't get a userid, because this would actually be filled in during the user's current session

  def get_xbox_info(xboxgamertag)

    #creates new api session initiated from XboxLeaders
    api = XboxLeaders::Api.new

    #Stores all retrieved information into xboxprofile variable. This information is dynamic, and will change as frequently as the user interacts with Xbox Live.
    xboxprofile = api.fetch_profile(xboxgamertag)

      xboxgamerinfo = XboxGamerInfo.create([
      {
        user_id:          user_id,
        #Accesses hash values from xboxprofile variable, and extracts needed value info. Overwrites and stores info in db
        gamertag:         xboxprofile["gamertag"],
        xbox_live_tier:   xboxprofile["tier"],
        avatar_img_url:   xboxprofile["avatar"]["full"],
        reputation_score: xboxprofile["reputation"]
      }
    ])
  end



  #this method is for the okgamer prototype only. Because we're focusing
  def hasGTAV?
    @gta_instance = false
    #stores nested hash values array of key:value[recentactivity] into variable. Then converts array of hashes into a downcase string for search ease.
    recent_activity = xboxprofile["recentactivity"]
    string_recent_activity = recent_activity.to_s.downcase!

    #looking for hard-coded literal to indicate presence of game
    if string_recent_activity.include? "grand theft auto v"
      @gta_instance = true
    else
      #if
      @gta_instance = false
    end
  end

end



