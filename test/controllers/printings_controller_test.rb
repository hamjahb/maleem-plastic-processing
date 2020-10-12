require 'test_helper'

class PrintingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get printings_index_url
    assert_response :success
  end

  test "should get show" do
    get printings_show_url
    assert_response :success
  end

  test "should get edit" do
    get printings_edit_url
    assert_response :success
  end

end
