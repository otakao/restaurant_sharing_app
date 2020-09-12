require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get addresses_create_url
    assert_response :success
  end

  test "should get new" do
    get addresses_new_url
    assert_response :success
  end

  test "should get edi" do
    get addresses_edi_url
    assert_response :success
  end

  test "should get update" do
    get addresses_update_url
    assert_response :success
  end

end
