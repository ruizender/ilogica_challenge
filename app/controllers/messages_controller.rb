class MessagesController < ApplicationController
  before_action :set_messages, only: %i[ show destroy ]
  def show
  end

  def create
    @message = Message.new(message_params)
    respond_to do |format|
      if @message.save
        @message.message_client
        format.html { redirect_to contact_path, notice: 'Message was successfully'}
      else
        format.html { render 'home/contact' }
      end
    end
  end

  def destroy
    @message.destroy
      respond_to do |format|
        format.html { redirect_to contact_path, notice: "Message was successfully destroyed." }
    end
  end
  
  private

  def set_messages
    @message = Message.find(params[:id])
  end
  
  def message_params
    params.require(:message).permit(:full_name, :email, :phone, :description)
  end
end


