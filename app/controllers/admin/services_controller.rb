class Admin::ServicesController < Admin::ResourceController
  def index
    @services = Service.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @services }
      format.js
    end
  end

  def show
    @service = Service.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @service }
      format.js
    end
  end

  def new
    @service = Service.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @service }
      format.js
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(params[:service])
    respond_to do |format|
      if @service.save
        format.html { redirect_to action:"tab" }
        format.json { render json: @service, status: :created, location: @service }
      else
        format.html { render action: "new" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @service = Service.find(params[:id])
    respond_to do |format|
      if @service.update_attributes(params[:service])
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url }
      format.json { head :no_content }
    end
  end

  def tab
    @services = Service.all
     respond_to do |format|
      format.html
    end
  end
end
