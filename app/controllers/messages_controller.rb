class MessagesController < ApplicationController

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

  private

  def message_params
    params.require(:message).permit(:full_name, :email, :phone, :description)
  end
end


