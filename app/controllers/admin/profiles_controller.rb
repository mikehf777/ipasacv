class Admin::ProfilesController < Admin::ResourceController
  def index
    @profiles = Profile.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profiles }
      format.js
    end
  end

  def show
    @profile = Profile.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile }
      format.js
    end
  end

  def new
    @profile = Profile.new
    6.times { @profile.photos.build }
    @titulo = "Nuevo  Perfil"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile }
      format.js
    end
  end

  def edit
    @profile = Profile.find(params[:id])
    6.times { @profile.photos.build }
    @titulo = "Actualizar Perfil"
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @profile = Profile.new(params[:profile])
    respond_to do |format|
      if @profile.save
        format.html { redirect_to action:"tab"}
        format.json { render json: @profile, status: :created, location: @profile }
      else
        format.html { render action: "new" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @profile = Profile.find(params[:id])
    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to action: "tab" }
        format.json { head :no_content }
        format.js
      else
        format.html { render action: "edit" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to action: "tab" }
      format.json { head :no_content }
    end
  end

  def tab
    @profiles = Profile.all
    respond_to do |format|
      format.html 
      format.json { head :no_content }
      format.js
    end
  end
end