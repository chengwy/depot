require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should create comment" do
    assert_difference('Comment.count') do
      #modified ----------------------------------------
      post :create, comment: @update
      #modified ----------------------------------------
    end

    assert_redirected_to product_path(assigns(:comment))
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
