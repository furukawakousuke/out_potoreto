require "test_helper"

class Admin::PostPhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_post_photos_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_post_photos_show_url
    assert_response :success
  end
end