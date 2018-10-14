require "application_system_test_case"

class LanguagesTest < ApplicationSystemTestCase
  setup do
    @language = languages(:one)
  end

  test "visiting the index" do
    visit languages_url
    assert_selector "h1", text: "Languages"
  end

  test "creating a Language" do
    visit languages_url
    click_on "New Language"

    fill_in "Iso2", with: @language.iso2
    fill_in "Iso3", with: @language.iso3
    fill_in "Localised Name", with: @language.localised_name
    fill_in "Name", with: @language.name
    click_on "Create Language"

    assert_text "Language was successfully created"
    click_on "Back"
  end

  test "updating a Language" do
    visit languages_url
    click_on "Edit", match: :first

    fill_in "Iso2", with: @language.iso2
    fill_in "Iso3", with: @language.iso3
    fill_in "Localised Name", with: @language.localised_name
    fill_in "Name", with: @language.name
    click_on "Update Language"

    assert_text "Language was successfully updated"
    click_on "Back"
  end

  test "destroying a Language" do
    visit languages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Language was successfully destroyed"
  end
end
