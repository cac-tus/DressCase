require 'test_helper'

class OfferLogsControllerTest < ActionController::TestCase
  setup do
    @offer_log = offer_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offer_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer_log" do
    assert_difference('OfferLog.count') do
      post :create, :offer_log => { :actress_id => @offer_log.actress_id, :director_id => @offer_log.director_id, :message => @offer_log.message, :offer_id => @offer_log.offer_id, :receive_datetime => @offer_log.receive_datetime, :send_datetime => @offer_log.send_datetime }
    end

    assert_redirected_to offer_log_path(assigns(:offer_log))
  end

  test "should show offer_log" do
    get :show, :id => @offer_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @offer_log
    assert_response :success
  end

  test "should update offer_log" do
    put :update, :id => @offer_log, :offer_log => { :actress_id => @offer_log.actress_id, :director_id => @offer_log.director_id, :message => @offer_log.message, :offer_id => @offer_log.offer_id, :receive_datetime => @offer_log.receive_datetime, :send_datetime => @offer_log.send_datetime }
    assert_redirected_to offer_log_path(assigns(:offer_log))
  end

  test "should destroy offer_log" do
    assert_difference('OfferLog.count', -1) do
      delete :destroy, :id => @offer_log
    end

    assert_redirected_to offer_logs_path
  end
end
