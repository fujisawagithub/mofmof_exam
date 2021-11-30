require 'test_helper'

class RentalHousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental_house = rental_houses(:one)
  end

  test "should get index" do
    get rental_houses_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_house_url
    assert_response :success
  end

  test "should create rental_house" do
    assert_difference('RentalHouse.count') do
      post rental_houses_url, params: { rental_house: { address: @rental_house.address, age: @rental_house.age, fee: @rental_house.fee, name: @rental_house.name, remarks: @rental_house.remarks } }
    end

    assert_redirected_to rental_house_url(RentalHouse.last)
  end

  test "should show rental_house" do
    get rental_house_url(@rental_house)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_house_url(@rental_house)
    assert_response :success
  end

  test "should update rental_house" do
    patch rental_house_url(@rental_house), params: { rental_house: { address: @rental_house.address, age: @rental_house.age, fee: @rental_house.fee, name: @rental_house.name, remarks: @rental_house.remarks } }
    assert_redirected_to rental_house_url(@rental_house)
  end

  test "should destroy rental_house" do
    assert_difference('RentalHouse.count', -1) do
      delete rental_house_url(@rental_house)
    end

    assert_redirected_to rental_houses_url
  end
end
