class OptionsController < ApplicationController
  before_action :set_option, only: [:show, :edit, :update, :destroy, :addProduct, :removeProduct]

  # GET /options
  # GET /options.json
  def index
    @options = Option.all
  end

  # GET /options/1
  # GET /options/1.json
  def show
  end

  # GET /options/new
  def new
    @option = Option.new
  end

  # GET /options/1/edit
  def edit
    @active_products = Product.where('"isArchive"<>true or "isArchive" is null')-@option.products;
  end

  # POST /options
  # POST /options.json
  def create
    @option = Option.new(option_params)

    respond_to do |format|
      if @option.save
        format.html { redirect_to products_url, notice: 'Опция успешно создана.' }
        format.json { render :show, status: :created, location: @option }
      else
        format.html { render :new }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /options/1
  # PATCH/PUT /options/1.json
  def update
    if @option.isArchive=true
      @option.enddate=Date.today;
    else
      @option.enddate=nil;
    end  
    respond_to do |format|
      if @option.update(option_params)
        format.html { redirect_to products_url, notice: 'Опция успешно изменена.' }
        format.json { render :show, status: :ok, location: @option }
      else
        format.html { render :edit }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /options/1
  # DELETE /options/1.json
  def destroy
    @option.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Опция успешно удалена.' }
      format.json { head :no_content }
    end
  end

  def addProduct
    @prId = params['product']['id'];
    @option.products << Product.find(@prId);
    @option.save;
    respond_to do |format|
      format.js
    end  
  end

  def removeProduct
    @prId=params['prId'];
    @removedProduct = Product.find(params[:prId]);
    @option.products.delete(@removedProduct);
    @option.save;
      respond_to do |format|
        format.js
      end 
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option
      @option = Option.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def option_params
      params.require(:option).permit(:target, :borrower, :mortgagor, :sAmount, :cpCoeff, :percent, :rule, :name, :NPA, :startdate, :note, :enddate, :isArchive)
    end
end
