class HomeController < ApplicationController
  
  def index
  end

  def contact
    @message = Message.new
    @list_message = Message.page(params[:page]).per(6)
  end
end
