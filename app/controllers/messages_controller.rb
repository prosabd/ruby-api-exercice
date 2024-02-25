class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    
    if @message.save
      redirect_to messages_path, notice: 'Message Envoyee'
    else
      render :index
    end
  end

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  private

  def message_params
    params.require(:message).permit(:title, :content)
  end
end