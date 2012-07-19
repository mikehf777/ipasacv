class RentsController < ApplicationController
  def index
    @rents = Rent.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rents }
    end
  end

  def show
    @rent = Rent.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rent }
    end
  end

  def new
    @rent = Rent.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rent }
    end
  end

  def edit
    @rent = Rent.find(params[:id])
  end

  def create
    @rent = Rent.new(params[:rent])
    respond_to do |format|
      if @rent.save
        format.html { redirect_to @rent, notice: 'Rent was successfully created.' }
        format.json { render json: @rent, status: :created, location: @rent }
      else
        format.html { render action: "new" }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @rent = Rent.find(params[:id])
    respond_to do |format|
      if @rent.update_attributes(params[:rent])
        format.html { redirect_to @rent, notice: 'Rent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy
    respond_to do |format|
      format.html { redirect_to rents_url }
      format.json { head :no_content }
    end
  end
end