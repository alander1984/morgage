require 'test_helper'

class WorksControllerTest < ActionController::TestCase
  setup do
    @work = works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work" do
    assert_difference('Work.count') do
      post :create, work: { act10: @work.act10, act11: @work.act11, act12: @work.act12, act13: @work.act13, act14: @work.act14, act15: @work.act15, act16: @work.act16, act17: @work.act17, act18: @work.act18, act19: @work.act19, act1: @work.act1, act20: @work.act20, act2: @work.act2, act3: @work.act3, act4: @work.act4, act5: @work.act5, act6: @work.act6, act7: @work.act7, act8: @work.act8, act9: @work.act9, actOtherText: @work.actOtherText, area: @work.area, city: @work.city, cnt1: @work.cnt1, cnt2: @work.cnt2, cnt3: @work.cnt3, cnt4: @work.cnt4, cnt5: @work.cnt5, cnt6: @work.cnt6, corp: @work.corp, house: @work.house, index: @work.index, name: @work.name, office: @work.office, phone: @work.phone, region: @work.region, site: @work.site, str: @work.str, street: @work.street }
    end

    assert_redirected_to work_path(assigns(:work))
  end

  test "should show work" do
    get :show, id: @work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work
    assert_response :success
  end

  test "should update work" do
    patch :update, id: @work, work: { act10: @work.act10, act11: @work.act11, act12: @work.act12, act13: @work.act13, act14: @work.act14, act15: @work.act15, act16: @work.act16, act17: @work.act17, act18: @work.act18, act19: @work.act19, act1: @work.act1, act20: @work.act20, act2: @work.act2, act3: @work.act3, act4: @work.act4, act5: @work.act5, act6: @work.act6, act7: @work.act7, act8: @work.act8, act9: @work.act9, actOtherText: @work.actOtherText, area: @work.area, city: @work.city, cnt1: @work.cnt1, cnt2: @work.cnt2, cnt3: @work.cnt3, cnt4: @work.cnt4, cnt5: @work.cnt5, cnt6: @work.cnt6, corp: @work.corp, house: @work.house, index: @work.index, name: @work.name, office: @work.office, phone: @work.phone, region: @work.region, site: @work.site, str: @work.str, street: @work.street }
    assert_redirected_to work_path(assigns(:work))
  end

  test "should destroy work" do
    assert_difference('Work.count', -1) do
      delete :destroy, id: @work
    end

    assert_redirected_to works_path
  end
end
