require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_index_url
    assert_response :success
  end

  test "should get show" do
    get product_show_url
    assert_response :success
  end

  test "should get destroy" do
    get product_destroy_url
    assert_response :success
  end
end
