require 'test_helper'

class OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get checkout" do
    get order_checkout_url
    assert_response :success
  end

end
