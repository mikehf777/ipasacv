class Admin::LocalitiesController < Admin::ResourceController
  def index
    @titulo = "Lista de localidades"
    @localities = Locality.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @localities }
      format.js 
    end
  end

  def new
    @titulo = "Agregar Localidad"
    @locality = Locality.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @locality }
      format.js
    end
  end

  def edit
    @titulo = "Actualizar Localidad"
    @locality = Locality.find(params[:id])
    respond_to do |format|
      format.json { render json: @locality }
      format.js
    end
  end

  def create
    @titulo = "Agregar Localidad"
    @locality = Locality.new(params[:locality])
    respond_to do |format|
      if @locality.save
        format.html { redirect_to action: "tab" }
        format.json { render json: @locality, status: :created, location: @locality }
      else
        format.html { render action: "new" }
        format.json { render json: @locality.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @titulo = "Actualizar Localidad"
    @locality = Locality.find(params[:id])
    respond_to do |format|
      if @locality.update_attributes(params[:locality])
        format.html { redirect_to action: "tab"}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @locality.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @locality = Locality.find(params[:id])
    @locality.destroy
    respond_to do |format|
      format.html { redirect_to action: "tab"}
      format.json { head :no_content }
    end
  end

  def tab
    @titulo = "Lista de localidades"
    @localities = Locality.all
    respond_to do |format|
      format.html
    end
  end 
end