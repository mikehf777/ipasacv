class Admin::TypesController < Admin::ResourceController
  def index
    @types = Type.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @types }
      format.js
    end
  end

  def new
    @type = Type.new
    @titulo = "Nuevo Tipo de Inmueble"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type }
      format.js
    end
  end

  def edit
    @type = Type.find(params[:id])
    @titulo = "Edita Tipo de Inmueble"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type }
      format.js
    end
  end

  def create
    @type = Type.new(params[:type])
    respond_to do |format|
      if @type.save
        format.html { redirect_to action: "tab"}
        format.json { render json: @type, status: :created, location: @type }
      else
        format.html { render action: "new" }
        format.json { render json: @type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @type = Type.find(params[:id])
    respond_to do |format|
      if @type.update_attributes(params[:type])
        format.html { redirect_to action: "tab" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @type = Type.find(params[:id])
    @type.destroy
    respond_to do |format|
      format.html {redirect_to action: "tab" }
      format.json { head :no_content }
    end
  end
  
 def tab
    @types = Type.all
     respond_to do |format|
      format.html
    end
  end 
end