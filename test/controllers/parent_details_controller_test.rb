require 'test_helper'

class ParentDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent_detail = parent_details(:one)
  end

  test "should get index" do
    get parent_details_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_detail_url
    assert_response :success
  end

  test "should create parent_detail" do
    assert_difference('ParentDetail.count') do
      post parent_details_url, params: { parent_detail: { Address: @parent_detail.Address, User_detail_id: @parent_detail.User_detail_id, email: @parent_detail.email, first_name: @parent_detail.first_name, last_name: @parent_detail.last_name, phone_number: @parent_detail.phone_number } }
    end

    assert_redirected_to parent_detail_url(ParentDetail.last)
  end

  test "should show parent_detail" do
    get parent_detail_url(@parent_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_detail_url(@parent_detail)
    assert_response :success
  end

  test "should update parent_detail" do
    patch parent_detail_url(@parent_detail), params: { parent_detail: { Address: @parent_detail.Address, User_detail_id: @parent_detail.User_detail_id, email: @parent_detail.email, first_name: @parent_detail.first_name, last_name: @parent_detail.last_name, phone_number: @parent_detail.phone_number } }
    assert_redirected_to parent_detail_url(@parent_detail)
  end

  test "should destroy parent_detail" do
    assert_difference('ParentDetail.count', -1) do
      delete parent_detail_url(@parent_detail)
    end

    assert_redirected_to parent_details_url
  end
end
