require 'test_helper'

class GamesessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gamesessions_index_url
    assert_response :success
  end

  test "should get show" do
    get gamesessions_show_url
    assert_response :success
  end

  test "should get new" do
    get gamesessions_new_url
    assert_response :success
  end

  test "should get create" do
    get gamesessions_create_url
    assert_response :success
  end

  test "should get edit" do
    get gamesessions_edit_url
    assert_response :success
  end

  test "should get update" do
    get gamesessions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get gamesessions_destroy_url
    assert_response :success
  end

end
