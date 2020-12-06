require "application_system_test_case"

class CarmodelsTest < ApplicationSystemTestCase
  setup do
    @carmodel = carmodels(:one)
  end

  test "visiting the index" do
    visit carmodels_url
    assert_selector "h1", text: "Carmodels"
  end

  test "creating a Carmodel" do
    visit carmodels_url
    click_on "New Carmodel"

    fill_in "Fuel1", with: @carmodel.fuel1
    fill_in "Pollution1", with: @carmodel.pollution1
    fill_in "Range1", with: @carmodel.range1
    fill_in "Speed1", with: @carmodel.speed1
    fill_in "Type1", with: @carmodel.type1
    click_on "Create Carmodel"

    assert_text "Carmodel was successfully created"
    click_on "Back"
  end

  test "updating a Carmodel" do
    visit carmodels_url
    click_on "Edit", match: :first

    fill_in "Fuel1", with: @carmodel.fuel1
    fill_in "Pollution1", with: @carmodel.pollution1
    fill_in "Range1", with: @carmodel.range1
    fill_in "Speed1", with: @carmodel.speed1
    fill_in "Type1", with: @carmodel.type1
    click_on "Update Carmodel"

    assert_text "Carmodel was successfully updated"
    click_on "Back"
  end

  test "destroying a Carmodel" do
    visit carmodels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carmodel was successfully destroyed"
  end
end
