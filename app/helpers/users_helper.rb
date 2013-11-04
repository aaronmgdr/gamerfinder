module UsersHelper
  def current_user_is_owner?
    current_user == @user
  end

  def users_unread_message_count
    current_user.mailbox.inbox(:unread => true).count(:id, :distinct => true)
  end
end
