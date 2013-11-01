module UsersHelper
  def current_user_is_owner?
    current_user == @user
  end
end
