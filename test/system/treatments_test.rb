require "application_system_test_case"

class TreatmentsTest < ApplicationSystemTestCase
  setup do
    @treatment = treatments(:one)
  end

  test "visiting the index" do
    visit treatments_url
    assert_selector "h1", text: "Treatments"
  end

  test "should create treatment" do
    visit treatments_url
    click_on "New treatment"

    fill_in "Description", with: @treatment.description
    fill_in "Name", with: @treatment.name
    click_on "Create Treatment"

    assert_text "Treatment was successfully created"
    click_on "Back"
  end

  test "should update Treatment" do
    visit treatment_url(@treatment)
    click_on "Edit this treatment", match: :first

    fill_in "Description", with: @treatment.description
    fill_in "Name", with: @treatment.name
    click_on "Update Treatment"

    assert_text "Treatment was successfully updated"
    click_on "Back"
  end

  test "should destroy Treatment" do
    visit treatment_url(@treatment)
    click_on "Destroy this treatment", match: :first

    assert_text "Treatment was successfully destroyed"
  end
end
