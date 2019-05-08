require 'test_helper'

class BlasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bla = blas(:one)
  end

  test "should get index" do
    get blas_url
    assert_response :success
  end

  test "should get new" do
    get new_bla_url
    assert_response :success
  end

  test "should create bla" do
    assert_difference('Bla.count') do
      post blas_url, params: { bla: { name: @bla.name } }
    end

    assert_redirected_to bla_url(Bla.last)
  end

  test "should show bla" do
    get bla_url(@bla)
    assert_response :success
  end

  test "should get edit" do
    get edit_bla_url(@bla)
    assert_response :success
  end

  test "should update bla" do
    patch bla_url(@bla), params: { bla: { name: @bla.name } }
    assert_redirected_to bla_url(@bla)
  end

  test "should destroy bla" do
    assert_difference('Bla.count', -1) do
      delete bla_url(@bla)
    end

    assert_redirected_to blas_url
  end
end
