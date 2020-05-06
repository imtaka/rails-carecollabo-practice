require "application_system_test_case"

class CareplansTest < ApplicationSystemTestCase
  setup do
    @careplan = careplans(:one)
  end

  test "visiting the index" do
    visit careplans_url
    assert_selector "h1", text: "Careplans"
  end

  test "creating a Careplan" do
    visit careplans_url
    click_on "New Careplan"

    fill_in "Care task", with: @careplan.care_task
    fill_in "Create plan", with: @careplan.create_plan
    fill_in "Customer", with: @careplan.customer_id
    fill_in "Family wants", with: @careplan.family_wants
    fill_in "Long time care goal", with: @careplan.long_time_care_goal
    fill_in "Short time care goal", with: @careplan.short_time_care_goal
    fill_in "Situation achieved goal", with: @careplan.situation_achieved_goal
    fill_in "Update plan", with: @careplan.update_plan
    fill_in "User wants", with: @careplan.user_wants
    click_on "Create Careplan"

    assert_text "Careplan was successfully created"
    click_on "Back"
  end

  test "updating a Careplan" do
    visit careplans_url
    click_on "Edit", match: :first

    fill_in "Care task", with: @careplan.care_task
    fill_in "Create plan", with: @careplan.create_plan
    fill_in "Customer", with: @careplan.customer_id
    fill_in "Family wants", with: @careplan.family_wants
    fill_in "Long time care goal", with: @careplan.long_time_care_goal
    fill_in "Short time care goal", with: @careplan.short_time_care_goal
    fill_in "Situation achieved goal", with: @careplan.situation_achieved_goal
    fill_in "Update plan", with: @careplan.update_plan
    fill_in "User wants", with: @careplan.user_wants
    click_on "Update Careplan"

    assert_text "Careplan was successfully updated"
    click_on "Back"
  end

  test "destroying a Careplan" do
    visit careplans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Careplan was successfully destroyed"
  end
end
