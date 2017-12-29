require 'test_helper'

class MessageTest2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message_test2 = message_test2s(:one)
  end

  test "should get index" do
    get message_test2s_url
    assert_response :success
  end

  test "should get new" do
    get new_message_test2_url
    assert_response :success
  end

  test "should create message_test2" do
    assert_difference('MessageTest2.count') do
      post message_test2s_url, params: { message_test2: { message: @message_test2.message, title: @message_test2.title } }
    end

    assert_redirected_to message_test2_url(MessageTest2.last)
  end

  test "should show message_test2" do
    get message_test2_url(@message_test2)
    assert_response :success
  end

  test "should get edit" do
    get edit_message_test2_url(@message_test2)
    assert_response :success
  end

  test "should update message_test2" do
    patch message_test2_url(@message_test2), params: { message_test2: { message: @message_test2.message, title: @message_test2.title } }
    assert_redirected_to message_test2_url(@message_test2)
  end

  test "should destroy message_test2" do
    assert_difference('MessageTest2.count', -1) do
      delete message_test2_url(@message_test2)
    end

    assert_redirected_to message_test2s_url
  end
end
