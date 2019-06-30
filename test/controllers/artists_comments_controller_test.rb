require 'test_helper'

class ArtistsCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artists_comment = artists_comments(:one)
  end

  test "should get index" do
    get artists_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_artists_comment_url
    assert_response :success
  end

  test "should create artists_comment" do
    assert_difference('ArtistsComment.count') do
      post artists_comments_url, params: { artists_comment: {  } }
    end

    assert_redirected_to artists_comment_url(ArtistsComment.last)
  end

  test "should show artists_comment" do
    get artists_comment_url(@artists_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_artists_comment_url(@artists_comment)
    assert_response :success
  end

  test "should update artists_comment" do
    patch artists_comment_url(@artists_comment), params: { artists_comment: {  } }
    assert_redirected_to artists_comment_url(@artists_comment)
  end

  test "should destroy artists_comment" do
    assert_difference('ArtistsComment.count', -1) do
      delete artists_comment_url(@artists_comment)
    end

    assert_redirected_to artists_comments_url
  end
end
