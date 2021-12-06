require "test_helper"

class AnnouncementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @announcement = announcements(:one)
  end

  test "should get index" do
    get announcements_url, as: :json
    assert_response :success
  end

  test "should create announcement" do
    assert_difference("Announcement.count") do
      post announcements_url, params: { announcement: { announcement_type: @announcement.announcement_type, attachment: @announcement.attachment, author: @announcement.author, body: @announcement.body, claps: @announcement.claps, pinned_status: @announcement.pinned_status, time: @announcement.time, title: @announcement.title } }, as: :json
    end

    assert_response :created
  end

  test "should show announcement" do
    get announcement_url(@announcement), as: :json
    assert_response :success
  end

  test "should update announcement" do
    patch announcement_url(@announcement), params: { announcement: { announcement_type: @announcement.announcement_type, attachment: @announcement.attachment, author: @announcement.author, body: @announcement.body, claps: @announcement.claps, pinned_status: @announcement.pinned_status, time: @announcement.time, title: @announcement.title } }, as: :json
    assert_response :success
  end

  test "should destroy announcement" do
    assert_difference("Announcement.count", -1) do
      delete announcement_url(@announcement), as: :json
    end

    assert_response :no_content
  end
end
