class HomeController < ApplicationController
  
  def index
  end

  def contact
    #----- variable para listar los mensajes y paginarlos
    @messages= Message.all
    @list_message = Message.page(params[:page]).per(6)
    @q = Message.ransack(params[:q])
    if params[:q]
      @list_message = @q.result(distinct: true).page(params[:page]).per(6)
    end
  end
    #----- variable que se ocupara crear una instancia de mensaje
    @message = Message.new
end
