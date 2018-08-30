require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get feed" do
    get welcome_feed_url
    assert_response :success
  end

  test "should get show_user" do
    get welcome_show_user_url
    assert_response :success
  end

  test "should get following" do
    get welcome_following_url
    assert_response :success
  end

  test "should get unfollow" do
    get welcome_unfollow_url
    assert_response :success
  end

end
