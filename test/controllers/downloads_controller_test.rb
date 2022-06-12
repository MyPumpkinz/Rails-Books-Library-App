require "test_helper"

class DownloadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get downloads_index_url
    assert_response :success
  end

  test "should get show" do
    get downloads_show_url
    assert_response :success
  end
end
