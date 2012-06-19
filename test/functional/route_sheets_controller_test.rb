require 'test_helper'

class RouteSheetsControllerTest < ActionController::TestCase
  setup do
    @route_sheet = route_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:route_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create route_sheet" do
    assert_difference('RouteSheet.count') do
      post :create, route_sheet: { origin: @route_sheet.origin, out_date: @route_sheet.out_date, page_number: @route_sheet.page_number, reference: @route_sheet.reference, sender: @route_sheet.sender }
    end

    assert_redirected_to route_sheet_path(assigns(:route_sheet))
  end

  test "should show route_sheet" do
    get :show, id: @route_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @route_sheet
    assert_response :success
  end

  test "should update route_sheet" do
    put :update, id: @route_sheet, route_sheet: { origin: @route_sheet.origin, out_date: @route_sheet.out_date, page_number: @route_sheet.page_number, reference: @route_sheet.reference, sender: @route_sheet.sender }
    assert_redirected_to route_sheet_path(assigns(:route_sheet))
  end

  test "should destroy route_sheet" do
    assert_difference('RouteSheet.count', -1) do
      delete :destroy, id: @route_sheet
    end

    assert_redirected_to route_sheets_path
  end
end
