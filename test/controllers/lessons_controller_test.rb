require "test_helper"

class LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get lessons_new_url
    assert_response :success
  end

  test "should get edit" do
    get lessons_edit_url
    assert_response :success
  end
end
