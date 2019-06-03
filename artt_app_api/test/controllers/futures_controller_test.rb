require 'test_helper'

class FuturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @future = futures(:one)
  end

  test "should get index" do
    get futures_url, as: :json
    assert_response :success
  end

  test "should create future" do
    assert_difference('Future.count') do
      post futures_url, params: { future: { attendance: @future.attendance, comment: @future.comment, date: @future.date, description: @future.description, img: @future.img, title: @future.title } }, as: :json
    end

    assert_response 201
  end

  test "should show future" do
    get future_url(@future), as: :json
    assert_response :success
  end

  test "should update future" do
    patch future_url(@future), params: { future: { attendance: @future.attendance, comment: @future.comment, date: @future.date, description: @future.description, img: @future.img, title: @future.title } }, as: :json
    assert_response 200
  end

  test "should destroy future" do
    assert_difference('Future.count', -1) do
      delete future_url(@future), as: :json
    end

    assert_response 204
  end
end
