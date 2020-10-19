require 'test_helper'

class CuttingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cuttings_index_url
    assert_response :success
  end

  test "should get view" do
    get cuttings_view_url
    assert_response :success
  end

  test "should get edit" do
    get cuttings_edit_url
    assert_response :success
  end

end
