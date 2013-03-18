require 'test_helper'

class BlogMessagesControllerTest < ActionController::TestCase
  setup do
    @blog_message = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, blog_message: { image: @blog_message.image, text: @blog_message.text, user_id: @blog_message.user_id }
    end

    assert_redirected_to post_path(assigns(:blog_message))
  end

  test "should show post" do
    get :show, id: @blog_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_message
    assert_response :success
  end

  test "should update post" do
    put :update, id: @blog_message, blog_message: { image: @blog_message.image, text: @blog_message.text, user_id: @blog_message.user_id }
    assert_redirected_to post_path(assigns(:blog_message))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @blog_message
    end

    assert_redirected_to posts_path
  end
end
