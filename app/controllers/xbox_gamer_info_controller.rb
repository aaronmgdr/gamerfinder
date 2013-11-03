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

    XboxGamerInfo.create([
      {
        user_id:          user_id,
        #Accesses hash values from xboxprofile variable, and extracts needed value info. Overwrites and stores info in db
        gamertag:         xboxprofile["gamertag"],
        xbox_live_tier:   xboxprofile["tier"],
        avatar_img_url:   xboxprofile["avatar"]["full"],
        reputation_score: xboxprofile["reputation"]
      }
    ])
      redirect_to root_path, alert: "Gathering Xbox Info for #{xboxgamertag}"
  end
end

#should add a an exception to handle if the gamer tag is invaild
