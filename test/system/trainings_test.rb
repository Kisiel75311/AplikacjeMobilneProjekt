require "application_system_test_case"

class TrainingsTest < ApplicationSystemTestCase
  setup do
    @training = trainings(:one)
  end

  test "visiting the index" do
    visit trainings_url
    assert_selector "h1", text: "Trainings"
  end

  test "creating a Training" do
    visit trainings_url
    click_on "New Training"

    fill_in "Date", with: @training.date
    fill_in "Plan", with: @training.plan_id
    fill_in "Status", with: @training.status
    fill_in "User", with: @training.user_id
    click_on "Create Training"

    assert_text "Training was successfully created"
    click_on "Back"
  end

  test "updating a Training" do
    visit trainings_url
    click_on "Edit", match: :first

    fill_in "Date", with: @training.date
    fill_in "Plan", with: @training.plan_id
    fill_in "Status", with: @training.status
    fill_in "User", with: @training.user_id
    click_on "Update Training"

    assert_text "Training was successfully updated"
    click_on "Back"
  end

  test "destroying a Training" do
    visit trainings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Training was successfully destroyed"
  end
end
