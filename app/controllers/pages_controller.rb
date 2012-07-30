class PagesController < ApplicationController
  def home
    @titulo = "Home"
    @leases=Lease.where('status_renta'=> false)
    @message = Message.new
    @videos = Video.all
  end

  def show
        @lease = Lease.find(params[:id])
        respond_to do |format|
        format.html # mostrar.html.erb
        format.json { render json: @lease }
        format.js
      end 
  end 
end