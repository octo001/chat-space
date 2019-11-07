class MessagesController < ApplicationController
  before_action :set_group,only: [:index,:create]

  def create
    @message = @group.messages.new(message_params)
    if @message.save
      redirect_to group_messages_path(@group),notice:'メッセージが送信されました'
    else
      @message = @group.message.includes(:user)
      flash.now[:alert] = 'メッセージを入力して下さい。'
      render:index
    end
  end

  def index
    @message = Message.new
    @messages = @group.messages.includes(:user)
  end

  private

  def message_params
    params.require(:message).permit(:content,:image).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
 
end

