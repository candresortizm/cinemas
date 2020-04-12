require 'test_helper'

class Api::V1::MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_movies_index_url
    assert_response :success
  end

  test "should get new" do
    get api_v1_movies_new_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_movies_create_url
    assert_response :success
  end

end
