require 'test_helper'

class ShopperControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shopper_index_url
    assert_response :success
  end

  test "should get new" do
    get shopper_new_url
    assert_response :success
  end

end
