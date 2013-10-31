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
  
  end

  # GET /messages/1/edit
  def edit

  end

  # POST /messages
  # POST /messages.xml

  def create
  @recipients = 
    if params[:messages][:_recipient].present?
      @recipients = User.find(params[:messages][:_recipient])
    else
      []
    end

    @receipt = @actor.send_message(@recipients, params[:messages][:body], params[:messages][:subject])
    if (@receipt.errors.blank?)
      @conversation = @receipt.conversation
      flash[:success]= t('mailboxer.sent')
      redirect_to conversation_path(@conversation, :box => :sentbox)
    else
      render :action => :new
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
      params.require(:_recipient, :subject, :body)
  end
end