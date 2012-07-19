class RentDocumentsController < ApplicationController
  def index
    @rent_documents = RentDocument.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rent_documents }
    end
  end

  def show
    @rent_document = RentDocument.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rent_document }
    end
  end

  def new
    @rent_document = RentDocument.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rent_document }
    end
  end

  def edit
    @rent_document = RentDocument.find(params[:id])
  end

  def create
    @rent_document = RentDocument.new(params[:rent_document])
    respond_to do |format|
      if @rent_document.save
        format.html { redirect_to @rent_document, notice: 'Rent document was successfully created.' }
        format.json { render json: @rent_document, status: :created, location: @rent_document }
      else
        format.html { render action: "new" }
        format.json { render json: @rent_document.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @rent_document = RentDocument.find(params[:id])
    respond_to do |format|
      if @rent_document.update_attributes(params[:rent_document])
        format.html { redirect_to @rent_document, notice: 'Rent document was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rent_document.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rent_document = RentDocument.find(params[:id])
    @rent_document.destroy
    respond_to do |format|
      format.html { redirect_to rent_documents_url }
      format.json { head :no_content }
    end
  end
end