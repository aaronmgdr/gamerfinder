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

  def message_body
    @conversation.receipts_for(current_user).first.message.body
  end
end
