require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  # # I decided to test the GET and POST functionality for this controller because the application needs these endpoints in order to function and fulfill its base purpose

  test "should get new" do
    get posts_new_path
    assert_response :success
  end

  test "should create post" do
    assert_difference('Posts.count') do
      post posts_url, params: { posts: { title: "Test title", body: "Test body", author: "Test author", text: "Test text", image: "Test image" } }
    end

    assert_redirected_to posts_path
  end

  test "should show post" do
    post = Posts.create(title: "Test title", body: "Test body", author: "Test author", text: "Test text", image: "Test image")
    get post_url(post)
    assert_response :success
  end
end
