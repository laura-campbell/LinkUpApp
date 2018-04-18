require 'test_helper'

class UserInterestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_interests_index_url
    assert_response :success
  end

  test "should get show" do
    get user_interests_show_url
    assert_response :success
  end

  test "should get new" do
    get user_interests_new_url
    assert_response :success
  end

  test "should get create" do
    get user_interests_create_url
    assert_response :success
  end

  test "should get edit" do
    get user_interests_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_interests_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_interests_destroy_url
    assert_response :success
  end

end
