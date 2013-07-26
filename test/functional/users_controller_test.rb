require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @input_attributes = {
		name:	"sam",
		password:	"123",
		password_confirmation:	"123"
	}
	
	@user = users(:one)
  end

  test "should get index" do
	assert_difference('User.count')do
		post :create,user: @input_attributes
	end
	
	assert_redirected_to users_path
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: @input_attributes
    end

    assert_redirected_to users_path
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: @input_attributes
    assert_redirected_to users_path
  end

  
  
  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
