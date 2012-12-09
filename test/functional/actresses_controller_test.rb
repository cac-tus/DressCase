require 'test_helper'

class ActressesControllerTest < ActionController::TestCase
  setup do
    @actress = actresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actress" do
    assert_difference('Actress.count') do
      post :create, :actress => { :birthday => @actress.birthday, :id => @actress.id, :name => @actress.name, :office_id => @actress.office_id, :photo1 => @actress.photo1, :photo2 => @actress.photo2, :photo3 => @actress.photo3, :profile => @actress.profile, :sex => @actress.sex }
    end

    assert_redirected_to actress_path(assigns(:actress))
  end

  test "should show actress" do
    get :show, :id => @actress
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @actress
    assert_response :success
  end

  test "should update actress" do
    put :update, :id => @actress, :actress => { :birthday => @actress.birthday, :id => @actress.id, :name => @actress.name, :office_id => @actress.office_id, :photo1 => @actress.photo1, :photo2 => @actress.photo2, :photo3 => @actress.photo3, :profile => @actress.profile, :sex => @actress.sex }
    assert_redirected_to actress_path(assigns(:actress))
  end

  test "should destroy actress" do
    assert_difference('Actress.count', -1) do
      delete :destroy, :id => @actress
    end

    assert_redirected_to actresses_path
  end
end
