require "application_system_test_case"

class ProvidersTest < ApplicationSystemTestCase
  setup do
    @provider = providers(:one)
  end

  test "visiting the index" do
    visit providers_url
    assert_selector "h1", text: "Providers"
  end

  test "should create provider" do
    visit providers_url
    click_on "New provider"

    fill_in "Area", with: @provider.area
    fill_in "Description", with: @provider.description
    fill_in "Name", with: @provider.name
    fill_in "Specialty", with: @provider.specialty
    click_on "Create Provider"

    assert_text "Provider was successfully created"
    click_on "Back"
  end

  test "should update Provider" do
    visit provider_url(@provider)
    click_on "Edit this provider", match: :first

    fill_in "Area", with: @provider.area
    fill_in "Description", with: @provider.description
    fill_in "Name", with: @provider.name
    fill_in "Specialty", with: @provider.specialty
    click_on "Update Provider"

    assert_text "Provider was successfully updated"
    click_on "Back"
  end

  test "should destroy Provider" do
    visit provider_url(@provider)
    click_on "Destroy this provider", match: :first

    assert_text "Provider was successfully destroyed"
  end
end
