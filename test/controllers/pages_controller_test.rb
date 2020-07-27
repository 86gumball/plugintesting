require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get all_users" do
    get pages_all_users_url
    assert_response :success
  end

end
