require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:job1)
    @user = users(:john)
    sign_in :user, @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, :job => @job.attributes
    end

    assert_redirected_to jobs_path
  end

  test "should show job" do
    get :show, :id => @job.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @job.to_param
    assert_redirected_to jobs_path
  end

  test "should update job" do
    put :update, :id => @job.to_param, :job => @job.attributes #{:company_name => 'new name'}
    assert_redirected_to jobs_path
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, :id => @job.to_param
    end

    assert_redirected_to jobs_path
  end
end
