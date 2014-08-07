require 'test_helper'

class OnlineServicesControllerTest < ActionController::TestCase
  setup do
    @online_service = online_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:online_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create online_service" do
    assert_difference('OnlineService.count') do
      post :create, online_service: { emailed: @online_service.emailed, instore: @online_service.instore, name: @online_service.name, platform: @online_service.platform, price: @online_service.price, quantity: @online_service.quantity }
    end

    assert_redirected_to online_service_path(assigns(:online_service))
  end

  test "should show online_service" do
    get :show, id: @online_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @online_service
    assert_response :success
  end

  test "should update online_service" do
    patch :update, id: @online_service, online_service: { emailed: @online_service.emailed, instore: @online_service.instore, name: @online_service.name, platform: @online_service.platform, price: @online_service.price, quantity: @online_service.quantity }
    assert_redirected_to online_service_path(assigns(:online_service))
  end

  test "should destroy online_service" do
    assert_difference('OnlineService.count', -1) do
      delete :destroy, id: @online_service
    end

    assert_redirected_to online_services_path
  end
end
