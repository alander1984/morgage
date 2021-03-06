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
      @process = Activity.find_by(:request => @request)
      if @process!=nil
        if @process.status=="INS"
          @link = '/setProcessInsurance/'+@process.id.to_s
        else
          if @process.status=="PROD" then
            @link='/selectProduct?person='+@request.person.id.to_s+'&request='+@request.id.to_s
          else
            if @process.status=="READY" then
              @link = '/setProcessAgreement/'+@process.id.to_s  
            end  
          end  
        end  
      else 
        @link='/selectProduct?person='+@request.person.id.to_s+'&request='+@request.id.to_s
      end
  end

  # GET /requests/new
  def new
    @request = Request.new
    @mainwork=Work.new()
    @secondwork=Work.new()
    @request.mainwork=@mainwork
    @request.secondwork=@secondwork
    @request.build_mainwork;
    @request.build_secondwork;
    @credit1=Credit.new();
    @credit2 = Credit.new();
    @request.credit1=@credit1;
    @request.credit2=@credit2;
  end

  # GET /requests/1/edit
  def edit

  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    params['new_person'].permit!
    pers = Person.new(params['new_person']);
    @request.person=pers;
    params['mainwork'].permit!
    mainwork_ = Work.new(params['mainwork']);
    @request.mainwork=mainwork_;
    params['secondwork'].permit!
    secondwork_ = Work.new(params['secondwork']);
    @request.secondwork=secondwork_;
    params['firstcr'].permit!
    params['secondcr'].permit!
    if params['request']['expenseCredit']=="1"
      credit1_ = Credit.new(params['firstcr'])
      credit2_ = Credit.new(params['secondcr'])
    else
      credit1_ = Credit.new
      credit2_ = Credit.new
    end  
    @request.credit1 = credit1_;
    @request.credit2 = credit2_;    
    respond_to do |format|
      if @request.save
        format.html { redirect_to requests_url, notice: 'Заявка успешно создана' }
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
    params['new_person'].permit!
    @request.person.update(params['new_person']); 
    params['mainwork'].permit!
    @request.mainwork.update(params['mainwork']); 
    params['secondwork'].permit!
    @request.secondwork.update(params['secondwork']); 
    params['firstcr'].permit!
    params['secondcr'].permit!

    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to requests_url, notice: 'Заявка успешно изменена' }
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
