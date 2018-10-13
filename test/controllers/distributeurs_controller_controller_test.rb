require 'test_helper'

class DistributeursControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get distributeurs_controller_index_url
    assert_response :success
  end

  test "should get new" do
    get distributeurs_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get distributeurs_controller_create_url
    assert_response :success
  end

  test "should get edit" do
    get distributeurs_controller_edit_url
    assert_response :success
  end

  test "should get update" do
    get distributeurs_controller_update_url
    assert_response :success
  end

  test "should get destroy" do
    get distributeurs_controller_destroy_url
    assert_response :success
  end

end
