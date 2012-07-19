class Admin::PropertiesController < Admin::ResourceController
  def index
    @properties = Property.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @properties }
      format.js
    end
  end

  def show
    @property = Property.find(params[:id])
    @titulo = "Informacion Localidad"
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property }
      format.js
    end
  end

  def new
    @property = Property.new
    6.times { @property.pictures.build }
    3.times {@property.services.build }
    respond_to do |format|
      format.html  # new.html.erb
      format.json { render json: @property }
      format.js
    end
  end

  def edit
    @property = Property.find(params[:id])
    6.times { @property.pictures.build }
    3.times {@property.services.build }
    respond_to do |format|
      format.html
      format.json { render json: @property }
      format.js
    end
  end

  def create
    @property = Property.new(params[:property])
    respond_to do |format|
      if @property.save
        format.html { redirect_to action:"tab" }
        format.json { render json: @property, status: :created, location: @property }
      else
        format.html { render action:"new" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @property = Property.find(params[:id])
    respond_to do |format|
      if @property.update_attributes(params[:property])
        format.html { redirect_to action: "tab" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    respond_to do |format|
      format.html { redirect_to action: "tab" }
      format.json { head :no_content }
    end
  end
  
  def tab
    @properties = Property.all
     respond_to do |format|
      format.html
      format.js
    end
  end
end
