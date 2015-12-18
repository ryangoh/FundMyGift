require 'test_helper'

class FrontpagesControllerTest < ActionController::TestCase
  setup do
    @frontpage = frontpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frontpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frontpage" do
    assert_difference('Frontpage.count') do
      post :create, frontpage: {  }
    end

    assert_redirected_to frontpage_path(assigns(:frontpage))
  end

  test "should show frontpage" do
    get :show, id: @frontpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frontpage
    assert_response :success
  end

  test "should update frontpage" do
    patch :update, id: @frontpage, frontpage: {  }
    assert_redirected_to frontpage_path(assigns(:frontpage))
  end

  test "should destroy frontpage" do
    assert_difference('Frontpage.count', -1) do
      delete :destroy, id: @frontpage
    end

    assert_redirected_to frontpages_path
  end
end
