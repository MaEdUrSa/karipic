require "application_system_test_case"

class ObservationsTest < ApplicationSystemTestCase
  setup do
    @observation = observations(:one)
  end

  test "visiting the index" do
    visit observations_url
    assert_selector "h1", text: "Observations"
  end

  test "should create observation" do
    visit observations_url
    click_on "New observation"

    fill_in "Content", with: @observation.content
    fill_in "Photo", with: @observation.photo_id
    fill_in "User", with: @observation.user_id
    click_on "Create Observation"

    assert_text "Observation was successfully created"
    click_on "Back"
  end

  test "should update Observation" do
    visit observation_url(@observation)
    click_on "Edit this observation", match: :first

    fill_in "Content", with: @observation.content
    fill_in "Photo", with: @observation.photo_id
    fill_in "User", with: @observation.user_id
    click_on "Update Observation"

    assert_text "Observation was successfully updated"
    click_on "Back"
  end

  test "should destroy Observation" do
    visit observation_url(@observation)
    click_on "Destroy this observation", match: :first

    assert_text "Observation was successfully destroyed"
  end
end
