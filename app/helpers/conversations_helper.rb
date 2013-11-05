module ConversationsHelper
  def other_box
    case @box

    when 'inbox'
      'sentbox'
    when 'sentbox'
     'inbox'
    else
      'trash'
    end
  end

  def messages_in_conversation
    @conversation.receipts_for(current_user)
  end

  def del
    unless @box == 'trash' then "Delete" else "Deleted" end
  end

end
