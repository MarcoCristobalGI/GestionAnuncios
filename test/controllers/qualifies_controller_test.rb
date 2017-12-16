require 'test_helper'

class QualifiesControllerTest < ActionController::TestCase
  setup do
    @qualify = qualifies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualifies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualify" do
    assert_difference('Qualify.count') do
      post :create, qualify: { description: @qualify.description, score_id: @qualify.score_id, worker_id: @qualify.worker_id }
    end

    assert_redirected_to qualify_path(assigns(:qualify))
  end

  test "should show qualify" do
    get :show, id: @qualify
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualify
    assert_response :success
  end

  test "should update qualify" do
    patch :update, id: @qualify, qualify: { description: @qualify.description, score_id: @qualify.score_id, worker_id: @qualify.worker_id }
    assert_redirected_to qualify_path(assigns(:qualify))
  end

  test "should destroy qualify" do
    assert_difference('Qualify.count', -1) do
      delete :destroy, id: @qualify
    end

    assert_redirected_to qualifies_path
  end
end
