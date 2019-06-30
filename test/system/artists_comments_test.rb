require "application_system_test_case"

class ArtistsCommentsTest < ApplicationSystemTestCase
  setup do
    @artists_comment = artists_comments(:one)
  end

  test "visiting the index" do
    visit artists_comments_url
    assert_selector "h1", text: "Artists Comments"
  end

  test "creating a Artists comment" do
    visit artists_comments_url
    click_on "New Artists Comment"

    click_on "Create Artists comment"

    assert_text "Artists comment was successfully created"
    click_on "Back"
  end

  test "updating a Artists comment" do
    visit artists_comments_url
    click_on "Edit", match: :first

    click_on "Update Artists comment"

    assert_text "Artists comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Artists comment" do
    visit artists_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artists comment was successfully destroyed"
  end
end
