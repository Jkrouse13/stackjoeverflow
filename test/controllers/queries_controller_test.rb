require 'test_helper'

class QueriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get queries_index_url
    assert_response :success
  end

  test "should get show" do
    get queries_show_url
    assert_response :success
  end

end
