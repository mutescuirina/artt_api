require 'test_helper'

class PastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @past = pasts(:one)
  end

  test "should get index" do
    get pasts_url, as: :json
    assert_response :success
  end

  test "should create past" do
    assert_difference('Past.count') do
      post pasts_url, params: { past: { comment: @past.comment, description: @past.description, img: @past.img, title: @past.title } }, as: :json
    end

    assert_response 201
  end

  test "should show past" do
    get past_url(@past), as: :json
    assert_response :success
  end

  test "should update past" do
    patch past_url(@past), params: { past: { comment: @past.comment, description: @past.description, img: @past.img, title: @past.title } }, as: :json
    assert_response 200
  end

  test "should destroy past" do
    assert_difference('Past.count', -1) do
      delete past_url(@past), as: :json
    end

    assert_response 204
  end
end
