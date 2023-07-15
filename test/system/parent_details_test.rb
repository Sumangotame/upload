require "application_system_test_case"

class ParentDetailsTest < ApplicationSystemTestCase
  setup do
    @parent_detail = parent_details(:one)
  end

  test "visiting the index" do
    visit parent_details_url
    assert_selector "h1", text: "Parent Details"
  end

  test "creating a Parent detail" do
    visit parent_details_url
    click_on "New Parent Detail"

    fill_in "Address", with: @parent_detail.Address
    fill_in "User detail", with: @parent_detail.User_detail_id
    fill_in "Email", with: @parent_detail.email
    fill_in "First name", with: @parent_detail.first_name
    fill_in "Last name", with: @parent_detail.last_name
    fill_in "Phone number", with: @parent_detail.phone_number
    click_on "Create Parent detail"

    assert_text "Parent detail was successfully created"
    click_on "Back"
  end

  test "updating a Parent detail" do
    visit parent_details_url
    click_on "Edit", match: :first

    fill_in "Address", with: @parent_detail.Address
    fill_in "User detail", with: @parent_detail.User_detail_id
    fill_in "Email", with: @parent_detail.email
    fill_in "First name", with: @parent_detail.first_name
    fill_in "Last name", with: @parent_detail.last_name
    fill_in "Phone number", with: @parent_detail.phone_number
    click_on "Update Parent detail"

    assert_text "Parent detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Parent detail" do
    visit parent_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parent detail was successfully destroyed"
  end
end
