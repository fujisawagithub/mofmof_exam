require "application_system_test_case"

class RentalHousesTest < ApplicationSystemTestCase
  setup do
    @rental_house = rental_houses(:one)
  end

  test "visiting the index" do
    visit rental_houses_url
    assert_selector "h1", text: "Rental Houses"
  end

  test "creating a Rental house" do
    visit rental_houses_url
    click_on "New Rental House"

    fill_in "Address", with: @rental_house.address
    fill_in "Age", with: @rental_house.age
    fill_in "Fee", with: @rental_house.fee
    fill_in "Name", with: @rental_house.name
    fill_in "Remarks", with: @rental_house.remarks
    click_on "Create Rental house"

    assert_text "Rental house was successfully created"
    click_on "Back"
  end

  test "updating a Rental house" do
    visit rental_houses_url
    click_on "Edit", match: :first

    fill_in "Address", with: @rental_house.address
    fill_in "Age", with: @rental_house.age
    fill_in "Fee", with: @rental_house.fee
    fill_in "Name", with: @rental_house.name
    fill_in "Remarks", with: @rental_house.remarks
    click_on "Update Rental house"

    assert_text "Rental house was successfully updated"
    click_on "Back"
  end

  test "destroying a Rental house" do
    visit rental_houses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rental house was successfully destroyed"
  end
end
