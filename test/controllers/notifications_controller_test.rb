require "test_helper"

class NotificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notification = notifications(:one)
  end

  test "should get index" do
    get notifications_url, as: :json
    assert_response :success
  end

  test "should create notification" do
    assert_difference("Notification.count") do
      post notifications_url, params: { notification: { email: @notification.email } }, as: :json
    end

    assert_response :created
  end

  test "should show notification" do
    get notification_url(@notification), as: :json
    assert_response :success
  end

  test "should update notification" do
    patch notification_url(@notification), params: { notification: { email: @notification.email } }, as: :json
    assert_response :success
  end

  test "should destroy notification" do
    assert_difference("Notification.count", -1) do
      delete notification_url(@notification), as: :json
    end

    assert_response :no_content
  end
end
