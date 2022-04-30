class HomeController < ApplicationController
  def index
  end

  def contact
    @message = Message.new
  end
end
