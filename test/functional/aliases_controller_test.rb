require 'test_helper'

class AliasesControllerTest < ActionController::TestCase
  setup do
    @alias = aliases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aliases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alias" do
    assert_difference('Alias.count') do
      post :create, :alias => @alias.attributes
    end

    assert_redirected_to alias_path(assigns(:alias))
  end

  test "should show alias" do
    get :show, :id => @alias.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @alias.to_param
    assert_response :success
  end

  test "should update alias" do
    put :update, :id => @alias.to_param, :alias => @alias.attributes
    assert_redirected_to alias_path(assigns(:alias))
  end

  test "should destroy alias" do
    assert_difference('Alias.count', -1) do
      delete :destroy, :id => @alias.to_param
    end

    assert_redirected_to aliases_path
  end
end
