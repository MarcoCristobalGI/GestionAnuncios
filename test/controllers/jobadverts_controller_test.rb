require 'test_helper'

class JobadvertsControllerTest < ActionController::TestCase
  setup do
    @jobadvert = jobadverts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobadverts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobadvert" do
    assert_difference('Jobadvert.count') do
      post :create, jobadvert: { category_id: @jobadvert.category_id, description: @jobadvert.description, employer_id: @jobadvert.employer_id, title: @jobadvert.title, vacancies: @jobadvert.vacancies }
    end

    assert_redirected_to jobadvert_path(assigns(:jobadvert))
  end

  test "should show jobadvert" do
    get :show, id: @jobadvert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobadvert
    assert_response :success
  end

  test "should update jobadvert" do
    patch :update, id: @jobadvert, jobadvert: { category_id: @jobadvert.category_id, description: @jobadvert.description, employer_id: @jobadvert.employer_id, title: @jobadvert.title, vacancies: @jobadvert.vacancies }
    assert_redirected_to jobadvert_path(assigns(:jobadvert))
  end

  test "should destroy jobadvert" do
    assert_difference('Jobadvert.count', -1) do
      delete :destroy, id: @jobadvert
    end

    assert_redirected_to jobadverts_path
  end
end
