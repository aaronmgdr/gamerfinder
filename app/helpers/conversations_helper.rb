module ConversationsHelper
  def other_box
    case @box
      when 'inbox'
        'sentbox'
      when 'sentbox'
       'inbox'
    end
  end
end
