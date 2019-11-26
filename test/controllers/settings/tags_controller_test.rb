require 'test_helper'

class Settings::TagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @settings_tag = settings_tags(:one)
  end

  test "should get index" do
    get settings_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_settings_tag_url
    assert_response :success
  end

  test "should create settings_tag" do
    assert_difference('Settings::Tag.count') do
      post settings_tags_url, params: { settings_tag: { color: @settings_tag.color, title: @settings_tag.title, user_id: @settings_tag.user_id } }
    end

    assert_redirected_to settings_tag_url(Settings::Tag.last)
  end

  test "should show settings_tag" do
    get settings_tag_url(@settings_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_settings_tag_url(@settings_tag)
    assert_response :success
  end

  test "should update settings_tag" do
    patch settings_tag_url(@settings_tag), params: { settings_tag: { color: @settings_tag.color, title: @settings_tag.title, user_id: @settings_tag.user_id } }
    assert_redirected_to settings_tag_url(@settings_tag)
  end

  test "should destroy settings_tag" do
    assert_difference('Settings::Tag.count', -1) do
      delete settings_tag_url(@settings_tag)
    end

    assert_redirected_to settings_tags_url
  end
end
