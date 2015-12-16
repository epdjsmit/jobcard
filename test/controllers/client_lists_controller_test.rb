require 'test_helper'

class ClientListsControllerTest < ActionController::TestCase
  setup do
    @client_list = client_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_list" do
    assert_difference('ClientList.count') do
      post :create, client_list: { adress: @client_list.adress, cellnumber: @client_list.cellnumber, client_name: @client_list.client_name, surname: @client_list.surname }
    end

    assert_redirected_to client_list_path(assigns(:client_list))
  end

  test "should show client_list" do
    get :show, id: @client_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_list
    assert_response :success
  end

  test "should update client_list" do
    patch :update, id: @client_list, client_list: { adress: @client_list.adress, cellnumber: @client_list.cellnumber, client_name: @client_list.client_name, surname: @client_list.surname }
    assert_redirected_to client_list_path(assigns(:client_list))
  end

  test "should destroy client_list" do
    assert_difference('ClientList.count', -1) do
      delete :destroy, id: @client_list
    end

    assert_redirected_to client_lists_path
  end
end
