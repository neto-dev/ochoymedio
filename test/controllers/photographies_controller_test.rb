require 'test_helper'

class PhotographiesControllerTest < ActionController::TestCase
  setup do
    @photography = photographies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photographies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photography" do
    assert_difference('Photography.count') do
      post :create, photography: { categories_id: @photography.categories_id, description: @photography.description, name: @photography.name, url: @photography.url }
    end

    assert_redirected_to photography_path(assigns(:photography))
  end

  test "should show photography" do
    get :show, id: @photography
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photography
    assert_response :success
  end

  test "should update photography" do
    patch :update, id: @photography, photography: { categories_id: @photography.categories_id, description: @photography.description, name: @photography.name, url: @photography.url }
    assert_redirected_to photography_path(assigns(:photography))
  end

  test "should destroy photography" do
    assert_difference('Photography.count', -1) do
      delete :destroy, id: @photography
    end

    assert_redirected_to photographies_path
  end
end
