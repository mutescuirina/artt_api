require 'test_helper'

class PresentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @present = presents(:one)
  end

  test "should get index" do
    get presents_url, as: :json
    assert_response :success
  end

  test "should create present" do
    assert_difference('Present.count') do
      post presents_url, params: { present: { comment: @present.comment, date: @present.date, description: @present.description, img: @present.img, title: @present.title } }, as: :json
    end

    assert_response 201
  end

  test "should show present" do
    get present_url(@present), as: :json
    assert_response :success
  end

  test "should update present" do
    patch present_url(@present), params: { present: { comment: @present.comment, date: @present.date, description: @present.description, img: @present.img, title: @present.title } }, as: :json
    assert_response 200
  end

  test "should destroy present" do
    assert_difference('Present.count', -1) do
      delete present_url(@present), as: :json
    end

    assert_response 204
  end
end
