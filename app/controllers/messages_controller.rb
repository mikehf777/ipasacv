class MessagesController < ApplicationController
  def new
    @message = Message.new 
  end

  def create
    @message = Message.new(params[:message])
    NotificationsMailer.new_message(@message).deliver
    redirect_to root_path
    flash[:success] = "Gracias por contactarnos."
  end
end  