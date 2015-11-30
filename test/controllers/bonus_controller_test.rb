require 'test_helper'

class BonusControllerTest < ActionController::TestCase
  setup do
    @bonu = bonus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bonus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bonu" do
    assert_difference('Bonu.count') do
      post :create, bonu: { description: @bonu.description, expiration: @bonu.expiration, photo: @bonu.photo, title: @bonu.title, value: @bonu.value }
    end

    assert_redirected_to bonu_path(assigns(:bonu))
  end

  test "should show bonu" do
    get :show, id: @bonu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bonu
    assert_response :success
  end

  test "should update bonu" do
    patch :update, id: @bonu, bonu: { description: @bonu.description, expiration: @bonu.expiration, photo: @bonu.photo, title: @bonu.title, value: @bonu.value }
    assert_redirected_to bonu_path(assigns(:bonu))
  end

  test "should destroy bonu" do
    assert_difference('Bonu.count', -1) do
      delete :destroy, id: @bonu
    end

    assert_redirected_to bonus_path
  end
end
