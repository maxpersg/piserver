require 'test_helper'

class MacaddressesControllerTest < ActionController::TestCase
  setup do
    @macaddress = macaddresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:macaddresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create macaddress" do
    assert_difference('Macaddress.count') do
      post :create, macaddress: { description: @macaddress.description, macid: @macaddress.macid, owner: @macaddress.owner, remarks: @macaddress.remarks }
    end

    assert_redirected_to macaddress_path(assigns(:macaddress))
  end

  test "should show macaddress" do
    get :show, id: @macaddress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @macaddress
    assert_response :success
  end

  test "should update macaddress" do
    patch :update, id: @macaddress, macaddress: { description: @macaddress.description, macid: @macaddress.macid, owner: @macaddress.owner, remarks: @macaddress.remarks }
    assert_redirected_to macaddress_path(assigns(:macaddress))
  end

  test "should destroy macaddress" do
    assert_difference('Macaddress.count', -1) do
      delete :destroy, id: @macaddress
    end

    assert_redirected_to macaddresses_path
  end
end
