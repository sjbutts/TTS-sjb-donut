require 'test_helper'

class DoNutsControllerTest < ActionController::TestCase
  setup do
    @do_nut = do_nuts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:do_nuts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create do_nut" do
    assert_difference('DoNut.count') do
      post :create, do_nut: { image: @do_nut.image, name: @do_nut.name, price: @do_nut.price, string: @do_nut.string, toppings: @do_nut.toppings }
    end

    assert_redirected_to do_nut_path(assigns(:do_nut))
  end

  test "should show do_nut" do
    get :show, id: @do_nut
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @do_nut
    assert_response :success
  end

  test "should update do_nut" do
    patch :update, id: @do_nut, do_nut: { image: @do_nut.image, name: @do_nut.name, price: @do_nut.price, string: @do_nut.string, toppings: @do_nut.toppings }
    assert_redirected_to do_nut_path(assigns(:do_nut))
  end

  test "should destroy do_nut" do
    assert_difference('DoNut.count', -1) do
      delete :destroy, id: @do_nut
    end

    assert_redirected_to do_nuts_path
  end
end
