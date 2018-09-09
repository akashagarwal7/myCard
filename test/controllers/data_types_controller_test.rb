require 'test_helper'

class DataTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_type = data_types(:one)
  end

  test "should get index" do
    get data_types_url
    assert_response :success
  end

  test "should get new" do
    get new_data_type_url
    assert_response :success
  end

  test "should create data_type" do
    assert_difference('DataType.count') do
      post data_types_url, params: { data_type: { name: @data_type.name, prefix: @data_type.prefix } }
    end

    assert_redirected_to data_type_url(DataType.last)
  end

  test "should show data_type" do
    get data_type_url(@data_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_type_url(@data_type)
    assert_response :success
  end

  test "should update data_type" do
    patch data_type_url(@data_type), params: { data_type: { name: @data_type.name, prefix: @data_type.prefix } }
    assert_redirected_to data_type_url(@data_type)
  end

  test "should destroy data_type" do
    assert_difference('DataType.count', -1) do
      delete data_type_url(@data_type)
    end

    assert_redirected_to data_types_url
  end
end
