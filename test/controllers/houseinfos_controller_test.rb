require 'test_helper'

class HouseinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @houseinfo = houseinfos(:one)
  end

  test "should get index" do
    get houseinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_houseinfo_url
    assert_response :success
  end

  test "should create houseinfo" do
    assert_difference('Houseinfo.count') do
      post houseinfos_url, params: { houseinfo: { house_addrs: @houseinfo.house_addrs, house_description: @houseinfo.house_description, house_guest: @houseinfo.house_guest, house_id: @houseinfo.house_id, house_price: @houseinfo.house_price } }
    end

    assert_redirected_to houseinfo_url(Houseinfo.last)
  end

  test "should show houseinfo" do
    get houseinfo_url(@houseinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_houseinfo_url(@houseinfo)
    assert_response :success
  end

  test "should update houseinfo" do
    patch houseinfo_url(@houseinfo), params: { houseinfo: { house_addrs: @houseinfo.house_addrs, house_description: @houseinfo.house_description, house_guest: @houseinfo.house_guest, house_id: @houseinfo.house_id, house_price: @houseinfo.house_price } }
    assert_redirected_to houseinfo_url(@houseinfo)
  end

  test "should destroy houseinfo" do
    assert_difference('Houseinfo.count', -1) do
      delete houseinfo_url(@houseinfo)
    end

    assert_redirected_to houseinfos_url
  end
end
