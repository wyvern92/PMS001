require "application_system_test_case"

class HouseinfosTest < ApplicationSystemTestCase
  setup do
    @houseinfo = houseinfos(:one)
  end

  test "visiting the index" do
    visit houseinfos_url
    assert_selector "h1", text: "Houseinfos"
  end

  test "creating a Houseinfo" do
    visit houseinfos_url
    click_on "New Houseinfo"

    fill_in "House addrs", with: @houseinfo.house_addrs
    fill_in "House description", with: @houseinfo.house_description
    fill_in "House guest", with: @houseinfo.house_guest
    fill_in "House", with: @houseinfo.house_id
    fill_in "House price", with: @houseinfo.house_price
    click_on "Create Houseinfo"

    assert_text "Houseinfo was successfully created"
    click_on "Back"
  end

  test "updating a Houseinfo" do
    visit houseinfos_url
    click_on "Edit", match: :first

    fill_in "House addrs", with: @houseinfo.house_addrs
    fill_in "House description", with: @houseinfo.house_description
    fill_in "House guest", with: @houseinfo.house_guest
    fill_in "House", with: @houseinfo.house_id
    fill_in "House price", with: @houseinfo.house_price
    click_on "Update Houseinfo"

    assert_text "Houseinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Houseinfo" do
    visit houseinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Houseinfo was successfully destroyed"
  end
end
