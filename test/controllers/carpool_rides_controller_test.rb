require "test_helper"

class CarpoolRidesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carpool_rides_index_url
    assert_response :success
  end

  test "should get show" do
    get carpool_rides_show_url
    assert_response :success
  end

  test "should get new" do
    get carpool_rides_new_url
    assert_response :success
  end

  test "should get create" do
    get carpool_rides_create_url
    assert_response :success
  end

  test "should get edit" do
    get carpool_rides_edit_url
    assert_response :success
  end

  test "should get update" do
    get carpool_rides_update_url
    assert_response :success
  end

  test "should get destroy" do
    get carpool_rides_destroy_url
    assert_response :success
  end
end
