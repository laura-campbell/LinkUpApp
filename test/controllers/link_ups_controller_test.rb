require 'test_helper'

class LinkUpsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get link_ups_index_url
    assert_response :success
  end

  test "should get show" do
    get link_ups_show_url
    assert_response :success
  end

  test "should get new" do
    get link_ups_new_url
    assert_response :success
  end

  test "should get create" do
    get link_ups_create_url
    assert_response :success
  end

  test "should get edit" do
    get link_ups_edit_url
    assert_response :success
  end

  test "should get update" do
    get link_ups_update_url
    assert_response :success
  end

  test "should get destroy" do
    get link_ups_destroy_url
    assert_response :success
  end

end
