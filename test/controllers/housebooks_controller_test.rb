require 'test_helper'

class HousebooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @housebook = housebooks(:one)
  end

  test "should get index" do
    get housebooks_url
    assert_response :success
  end

  test "should get new" do
    get new_housebook_url
    assert_response :success
  end

  test "should create housebook" do
    assert_difference('Housebook.count') do
      post housebooks_url, params: { housebook: { Date: @housebook.Date, Payment: @housebook.Payment, Use: @housebook.Use } }
    end

    assert_redirected_to housebook_url(Housebook.last)
  end

  test "should show housebook" do
    get housebook_url(@housebook)
    assert_response :success
  end

  test "should get edit" do
    get edit_housebook_url(@housebook)
    assert_response :success
  end

  test "should update housebook" do
    patch housebook_url(@housebook), params: { housebook: { Date: @housebook.Date, Payment: @housebook.Payment, Use: @housebook.Use } }
    assert_redirected_to housebook_url(@housebook)
  end

  test "should destroy housebook" do
    assert_difference('Housebook.count', -1) do
      delete housebook_url(@housebook)
    end

    assert_redirected_to housebooks_url
  end
end
