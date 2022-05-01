class HomeController < ApplicationController
  
  def index
  end

  def contact
    @messages= Message.all
    @list_message = Message.page(params[:page]).per(6)
    @q = Message.ransack(params[:q])
    if params[:q]
      @list_message = @q.result(distinct: true).page(params[:page]).per(6)
    end

    #----- variable para listar los mensajes y usarlos en modales
    # if params[:q]
    #   @messages = Message.where('email LIKE ?', "%#{params[:q]}%")
    #   Rails.logger.info"*******entro al if #{@mesages.inspect}"
    # else
    #   Rails.logger.info"*******entro al ELSE"      
    # end

    #----- variable que se ocupara crear una instancia de mensaje
    @message = Message.new
    #-----  variable que se ocupara para paginar
  end
end
