#shamlessly copied from https://github.com/ging/social_stream/blob/master/base/app/controllers/messages_controller.rb

class MessagesController < ApplicationController

  before_filter :authenticate_user!
  before_filter :get_mailbox, :get_box, :get_actor

  def index
    redirect_to conversations_path(:box => @box)
  end

  # GET /messages/1
  # GET /messages/1.xml
  def show
    if @message = Message.find_by_id(params[:id]) and @conversation = @message.conversation
      if @conversation.is_participant?(@actor)
        redirect_to conversation_path(@conversation, :box => @box, :anchor => "message_" + @message.id.to_s)
      return
      end
    end
    redirect_to conversations_path(:box => @box)
  end

  # GET /messages/new
  # GET /messages/new.xml
  def new
    @users = User.all
    @receiver_id = params[:receiver]
    @conversation_id = params[:conversation]

    @receiver = User.find_by_id(params[:receiver])
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.xml

  def create
    #set recipient if it was passed in from the previous page
    @users = User.all
    if message_params[:_recipient].present?
      @recipients = [User.find(message_params[:_recipient])]
    end
    # determins if this is a new conversation or a reply continuing a conversation
    if message_params[:conversation].present?
      @receipt = @actor.reply_to_conversation(Conversation.find(message_params[:conversation]), message_params[:body])
    else
      @receipt = @actor.send_message(@recipients, message_params[:body], message_params[:subject])
    end
    if (@receipt.errors.blank?)
      @conversation = @receipt.conversation
      redirect_to conversations_path, notice: "Message Sent"
    else
      redirect_to new_message_path, alert: @receipt.errors.messages
    end
  end

  # PUT /messages/1
  # PUT /messages/1.xml
  def update

  end

  # DELETE /messages/1
  # DELETE /messages/1.xml
  def destroy

  end

  private

  def get_mailbox
    @mailbox = current_user.mailbox
  end

  def get_actor
    @actor = current_user
  end

  def get_box
    if params[:box].blank? or !["inbox","sentbox","trash"].include?params[:box]
      @box = "inbox"
    return
    end
    @box = params[:box]
  end

  def message_params
      params.require(:messages)
  end
end
