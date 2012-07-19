class LeasesController < ApplicationController
  def index
    @leases = Lease.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leases }
    end
  end

  def show
    @lease = Lease.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lease }
    end
  end

  def new
    @lease = Lease.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lease }
    end
  end

  def edit
    @lease = Lease.find(params[:id])
  end

  def create
    @lease = Lease.new(params[:lease])
    respond_to do |format|
      if @lease.save
        format.html { redirect_to @lease, notice: 'Lease was successfully created.' }
        format.json { render json: @lease, status: :created, location: @lease }
      else
        format.html { render action: "new" }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @lease = Lease.find(params[:id])
    respond_to do |format|
      if @lease.update_attributes(params[:lease])
        format.html { redirect_to @lease, notice: 'Lease was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lease = Lease.find(params[:id])
    @lease.destroy
    respond_to do |format|
      format.html { redirect_to leases_url }
      format.json { head :no_content }
    end
  end
end