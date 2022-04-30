class MessagesController < ApplicationController
  
  def create
    @message = Message.new(message_params)
    respond_to do |format|
      if @message.save
        format.html { redirect_to home_contact_path, notice: 'Message was successfully'}
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


