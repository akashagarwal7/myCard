require 'test_helper'

class MykisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myki = mykis(:one)
  end

  test "should get index" do
    get mykis_url
    assert_response :success
  end

  test "should get new" do
    get new_myki_url
    assert_response :success
  end

  test "should create myki" do
    assert_difference('Myki.count') do
      post mykis_url, params: { myki: { number: @myki.number, user_id: @myki.user_id } }
    end

    assert_redirected_to myki_url(Myki.last)
  end

  test "should show myki" do
    get myki_url(@myki)
    assert_response :success
  end

  test "should get edit" do
    get edit_myki_url(@myki)
    assert_response :success
  end

  test "should update myki" do
    patch myki_url(@myki), params: { myki: { number: @myki.number, user_id: @myki.user_id } }
    assert_redirected_to myki_url(@myki)
  end

  test "should destroy myki" do
    assert_difference('Myki.count', -1) do
      delete myki_url(@myki)
    end

    assert_redirected_to mykis_url
  end
end
