require 'test_helper'

class Message2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message2 = message2s(:one)
  end

  test "should get index" do
    get message2s_url
    assert_response :success
  end

  test "should get new" do
    get new_message2_url
    assert_response :success
  end

  test "should create message2" do
    assert_difference('Message2.count') do
      post message2s_url, params: { message2: { message: @message2.message, title: @message2.title } }
    end

    assert_redirected_to message2_url(Message2.last)
  end

  test "should show message2" do
    get message2_url(@message2)
    assert_response :success
  end

  test "should get edit" do
    get edit_message2_url(@message2)
    assert_response :success
  end

  test "should update message2" do
    patch message2_url(@message2), params: { message2: { message: @message2.message, title: @message2.title } }
    assert_redirected_to message2_url(@message2)
  end

  test "should destroy message2" do
    assert_difference('Message2.count', -1) do
      delete message2_url(@message2)
    end

    assert_redirected_to message2s_url
  end
end
