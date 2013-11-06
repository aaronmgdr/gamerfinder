class XboxGamerInfoController < ApplicationController
  def new
    @xbox = XboxGamerInfo.new
    @questions = Question.all
  end

  def create
    xboxgamertag = params[:xbox_gamertag]


    user_id = current_user.id
    api = XboxLeaders::Api.new

        #Stores all retrieved information into xboxprofile variable. This information is dynamic, and will change as frequently as the user interacts with Xbox Live.
    xboxprofile = api.fetch_profile(xboxgamertag)


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




  
    XboxGamerInfo.create([
      {
        user_id:          user_id,
        #Accesses hash values from xboxprofile variable, and extracts needed value info. Overwrites and stores info in db
        gamertag:         xboxprofile["gamertag"],
        xbox_live_tier:   xboxprofile["tier"],
        avatar_img_url:   xboxprofile["avatar"]["full"],
        reputation_score: xboxprofile["reputation"],
        hasgtav:          @gta_instance
      }
    ])

    respond_to do |format| 
      format.js { render layout: false } 
      format.html {redirect_to root_path, alert: "Gathered Xbox Info for #{xboxgamertag}" }
    end
      #redirect_to root_path, alert: "Gathering Xbox Info for #{xboxgamertag}"
  end
end

#should add a an exception to handle if the gamer tag is invaild
