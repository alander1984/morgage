require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { aizhk_estate: @request.aizhk_estate, amount: @request.amount, apartament: @request.apartament, bLName: @request.bLName, bName: @request.bName, bSName: @request.bSName, bunkrupt: @request.bunkrupt, carMake: @request.carMake, carModel: @request.carModel, carPledge: @request.carPledge, carPrice: @request.carPrice, carYear: @request.carYear, coborroweerRelation: @request.coborroweerRelation, conviction: @request.conviction, emplCEO: @request.emplCEO, emplFixedRecr: @request.emplFixedRecr, emplFloatRecr: @request.emplFloatRecr, emplIP: @request.emplIP, emplNone: @request.emplNone, emplOther: @request.emplOther, emplOtherText: @request.emplOtherText, emplPensioner: @request.emplPensioner, estCity: @request.estCity, estFlat: @request.estFlat, estFlatPart: @request.estFlatPart, estHouse: @request.estHouse, estHousePart: @request.estHousePart, estOther: @request.estOther, estOtherPart: @request.estOtherPart, estOtherTest: @request.estOtherTest, estPrice: @request.estPrice, estRegion: @request.estRegion, estRoom: @request.estRoom, estRoomPart: @request.estRoomPart, estate_deposit_amount: @request.estate_deposit_amount, estate_deposit_new: @request.estate_deposit_new, estate_deposit_old: @request.estate_deposit_old, expenseAlimony: @request.expenseAlimony, expenseAlimonyAmount: @request.expenseAlimonyAmount, expenseCredit: @request.expenseCredit, firstAmount: @request.firstAmount, floatRate: @request.floatRate, founder: @request.founder, insurance: @request.insurance, isborrower: @request.isborrower, iscoborrower: @request.iscoborrower, ismortgagor: @request.ismortgagor, mainWorkAmount: @request.mainWorkAmount, mainWorkMonths: @request.mainWorkMonths, mainWorkPosCategoryDepManager: @request.mainWorkPosCategoryDepManager, mainWorkPosCategoryGeneral: @request.mainWorkPosCategoryGeneral, mainWorkPosCategoryOther: @request.mainWorkPosCategoryOther, mainWorkPosCategoryOwner: @request.mainWorkPosCategoryOwner, mainWorkPosition: @request.mainWorkPosition, mainWorkYears: @request.mainWorkYears, many_children: @request.many_children, mat_cap: @request.mat_cap, military: @request.military, months: @request.months, otherCreditRequests: @request.otherCreditRequests, otherIncomeAmount: @request.otherIncomeAmount, otherIncomeLease: @request.otherIncomeLease, otherIncomeOther: @request.otherIncomeOther, otherIncomeOtherText: @request.otherIncomeOtherText, otherIncomePension: @request.otherIncomePension, region: @request.region, russian_family: @request.russian_family, sWorkAmount: @request.sWorkAmount, sWorkMonths: @request.sWorkMonths, sWorkPosCategoryDepManager: @request.sWorkPosCategoryDepManager, sWorkPosCategoryGeneral: @request.sWorkPosCategoryGeneral, sWorkPosCategoryOther: @request.sWorkPosCategoryOther, sWorkPosCategoryOwner: @request.sWorkPosCategoryOwner, sWorkPosition: @request.sWorkPosition, sWorkYears: @request.sWorkYears, salary_cred_form: @request.salary_cred_form, senioritymonths: @request.senioritymonths, seniorityyears: @request.seniorityyears, source_accumulation: @request.source_accumulation, source_help: @request.source_help, source_other: @request.source_other, source_otherCredit: @request.source_otherCredit, source_sell: @request.source_sell, target: @request.target, taxArrears: @request.taxArrears, waitForChild: @request.waitForChild }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    patch :update, id: @request, request: { aizhk_estate: @request.aizhk_estate, amount: @request.amount, apartament: @request.apartament, bLName: @request.bLName, bName: @request.bName, bSName: @request.bSName, bunkrupt: @request.bunkrupt, carMake: @request.carMake, carModel: @request.carModel, carPledge: @request.carPledge, carPrice: @request.carPrice, carYear: @request.carYear, coborroweerRelation: @request.coborroweerRelation, conviction: @request.conviction, emplCEO: @request.emplCEO, emplFixedRecr: @request.emplFixedRecr, emplFloatRecr: @request.emplFloatRecr, emplIP: @request.emplIP, emplNone: @request.emplNone, emplOther: @request.emplOther, emplOtherText: @request.emplOtherText, emplPensioner: @request.emplPensioner, estCity: @request.estCity, estFlat: @request.estFlat, estFlatPart: @request.estFlatPart, estHouse: @request.estHouse, estHousePart: @request.estHousePart, estOther: @request.estOther, estOtherPart: @request.estOtherPart, estOtherTest: @request.estOtherTest, estPrice: @request.estPrice, estRegion: @request.estRegion, estRoom: @request.estRoom, estRoomPart: @request.estRoomPart, estate_deposit_amount: @request.estate_deposit_amount, estate_deposit_new: @request.estate_deposit_new, estate_deposit_old: @request.estate_deposit_old, expenseAlimony: @request.expenseAlimony, expenseAlimonyAmount: @request.expenseAlimonyAmount, expenseCredit: @request.expenseCredit, firstAmount: @request.firstAmount, floatRate: @request.floatRate, founder: @request.founder, insurance: @request.insurance, isborrower: @request.isborrower, iscoborrower: @request.iscoborrower, ismortgagor: @request.ismortgagor, mainWorkAmount: @request.mainWorkAmount, mainWorkMonths: @request.mainWorkMonths, mainWorkPosCategoryDepManager: @request.mainWorkPosCategoryDepManager, mainWorkPosCategoryGeneral: @request.mainWorkPosCategoryGeneral, mainWorkPosCategoryOther: @request.mainWorkPosCategoryOther, mainWorkPosCategoryOwner: @request.mainWorkPosCategoryOwner, mainWorkPosition: @request.mainWorkPosition, mainWorkYears: @request.mainWorkYears, many_children: @request.many_children, mat_cap: @request.mat_cap, military: @request.military, months: @request.months, otherCreditRequests: @request.otherCreditRequests, otherIncomeAmount: @request.otherIncomeAmount, otherIncomeLease: @request.otherIncomeLease, otherIncomeOther: @request.otherIncomeOther, otherIncomeOtherText: @request.otherIncomeOtherText, otherIncomePension: @request.otherIncomePension, region: @request.region, russian_family: @request.russian_family, sWorkAmount: @request.sWorkAmount, sWorkMonths: @request.sWorkMonths, sWorkPosCategoryDepManager: @request.sWorkPosCategoryDepManager, sWorkPosCategoryGeneral: @request.sWorkPosCategoryGeneral, sWorkPosCategoryOther: @request.sWorkPosCategoryOther, sWorkPosCategoryOwner: @request.sWorkPosCategoryOwner, sWorkPosition: @request.sWorkPosition, sWorkYears: @request.sWorkYears, salary_cred_form: @request.salary_cred_form, senioritymonths: @request.senioritymonths, seniorityyears: @request.seniorityyears, source_accumulation: @request.source_accumulation, source_help: @request.source_help, source_other: @request.source_other, source_otherCredit: @request.source_otherCredit, source_sell: @request.source_sell, target: @request.target, taxArrears: @request.taxArrears, waitForChild: @request.waitForChild }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
