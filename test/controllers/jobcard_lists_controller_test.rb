require 'test_helper'

class JobcardListsControllerTest < ActionController::TestCase
  setup do
    @jobcard_list = jobcard_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobcard_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobcard_list" do
    assert_difference('JobcardList.count') do
      post :create, jobcard_list: { Description: @jobcard_list.Description, title: @jobcard_list.title }
    end

    assert_redirected_to jobcard_list_path(assigns(:jobcard_list))
  end

  test "should show jobcard_list" do
    get :show, id: @jobcard_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobcard_list
    assert_response :success
  end

  test "should update jobcard_list" do
    patch :update, id: @jobcard_list, jobcard_list: { Description: @jobcard_list.Description, title: @jobcard_list.title }
    assert_redirected_to jobcard_list_path(assigns(:jobcard_list))
  end

  test "should destroy jobcard_list" do
    assert_difference('JobcardList.count', -1) do
      delete :destroy, id: @jobcard_list
    end

    assert_redirected_to jobcard_lists_path
  end
end
