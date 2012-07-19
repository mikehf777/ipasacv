class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoices }
    end
  end

  def show
    @invoice = Invoice.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invoice }
    end
  end

  def new
    @invoice = Invoice.new
    @titulo = "Factura"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invoice }
    end
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def create
    @invoice = Invoice.new(params[:invoice])
    respond_to do |format|
      if @invoice.save
        format.html { redirect_to @invoice, notice: 'Invoice was successfully created.' }
        format.json { render json: @invoice, status: :created, location: @invoice }
      else
        format.html { render action: "new" }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @invoice = Invoice.find(params[:id])
    respond_to do |format|
      if @invoice.update_attributes(params[:invoice])
        format.html { redirect_to @invoice, notice: 'Invoice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy
    respond_to do |format|
      format.html { redirect_to invoices_url }
      format.json { head :no_content }
    end
  end
end