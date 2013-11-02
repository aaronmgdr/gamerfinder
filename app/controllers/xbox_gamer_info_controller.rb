class XboxGamerInfoController < ApplicationController
  def new
    @xbox_gamer_info = XboxGamerInfo.new
  end

  def create
    xboxgamertag = params[:xbox_gamertag]

    user_id = current_user
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
end
