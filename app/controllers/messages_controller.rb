class MessagesController < ApplicationController
  def new
    @message = Message.new 
  end

  def create
		@message = Message.new(params[:message])
		if @message.valid?
		    NotificationsMailer.new_message(@message).deliver
		    redirect_to root_path(:anchor => "contacto_logo")
		    flash[:success] = "Gracias por contactarnos."
		else
			redirect_to root_path(:anchor => "contacto_logo")
			flash[:error] = "Por favor llene todos los campos."
		end
  end
end  