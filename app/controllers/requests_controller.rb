class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
    mwork=Work.new()
    swork=Work.new()
    @request.mainwork=mwork
    @request.secondwork=swork
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:isborrower, :iscoborrower, :coborroweerRelation, :ismortgagor, :bName, :bSName, :bLName, :amount, :months, :firstAmount, :source_accumulation, :source_sell, :source_help, :source_otherCredit, :source_other, :targetReadyEstate, :targetBuildingEstate, :targetPreviousCredit, :estate_deposit_new, :estate_deposit_old, :estate_deposit_amount, :region, :military, :mat_cap, :many_children, :russian_family, :aizhk_estate, :apartament, :salary_cred_form, :floatRate, :insurance, :seniorityyears, :senioritymonths, :emplFixedRecr, :emplFloatRecr, :emplIP, :emplCEO, :emplPensioner, :emplNone, :emplOther, :emplOtherText, :mainWorkYears, :mainWorkMonths, :mainWorkPosition, :mainWorkPosCategoryOwner, :mainWorkPosCategoryGeneral, :mainWorkPosCategoryDepManager, :mainWorkPosCategoryOther, :mainWorkAmount, :sWorkYears, :sWorkMonths, :sWorkPosition, :sWorkPosCategoryOwner, :sWorkPosCategoryGeneral, :sWorkPosCategoryDepManager, :sWorkPosCategoryOther, :sWorkAmount, :otherIncomePension, :otherIncomeLease, :otherIncomeOther, :otherIncomeOtherText, :otherIncomeAmount, :expenseAlimony, :expenseAlimonyAmount, :expenseCredit, :estFlat, :estFlatPart, :estRoom, :estRoomPart, :estHouse, :estHousePart, :estOther, :estOtherTest, :estOtherPart, :estRegion, :estCity, :estPrice, :carMake, :carModel, :carYear, :carPledge, :carPrice, :conviction, :founder, :taxArrears, :otherCreditRequests, :bunkrupt, :waitForChild)
    end
end
