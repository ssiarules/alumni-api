require 'test_helper'

class AlumnisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumni = alumnis(:one)
  end

  test "should get index" do
    get alumnis_url, as: :json
    assert_response :success
  end

  test "should create alumni" do
    assert_difference('Alumni.count') do
      post alumnis_url, params: { alumni: { completed: @alumni.completed, description: @alumni.description } }, as: :json
    end

    assert_response 201
  end

  test "should show alumni" do
    get alumni_url(@alumni), as: :json
    assert_response :success
  end

  test "should update alumni" do
    patch alumni_url(@alumni), params: { alumni: { completed: @alumni.completed, description: @alumni.description } }, as: :json
    assert_response 200
  end

  test "should destroy alumni" do
    assert_difference('Alumni.count', -1) do
      delete alumni_url(@alumni), as: :json
    end

    assert_response 204
  end
end
