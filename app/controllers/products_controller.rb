class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :addOption, :removeOption]

  # GET /products
  # GET /products.json
  def index
    @active_products = Product.where('"isArchive"<>true or "isArchive" is null');
    @archive_products = Product.where('"isArchive"=true');
    @active_options = Option.where('"isArchive"<>true or "isArchive" is null');
    @archive_options = Option.where('"isArchive"=true');
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @active_options = Option.where('"isArchive"<>true or "isArchive" is null');
  end

  # GET /products/1/edit
  def edit
    @active_options = Option.where('"isArchive"<>true or "isArchive" is null')-@product.options;

  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Продукт успешно создан.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    if @product.isArchive=true
      @product.enddate=Date.today;
    else
      @product.enddate=nil;
    end  
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Продукт успешно изменен.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Продукт успешно удален.' }
      format.json { head :no_content }
    end
  end

  def addOption
      #@opId = params['option']['id'];
      #@product.options << Option.find(@opId);
      #@product.save;
      #respond_to do |format|
      #  format.js
      #end  
  end

  def removeOption
    @opId=params['opId'];
    @removedOption = Option.find(params[:opId]);
    @product.options.delete(@removedOption);
    @product.save;
      respond_to do |format|
        format.js
      end 
  end  

  def sendAddOptionForm
    respond_to do |format|
        format.js
      end 
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:audience, :target, :months, :sAmount, :pledge, :insurance, :cpCoeff, :rule, :percent, :name, :NPA, :startdate, :note, :isArchive, :enddate)
    end
end
