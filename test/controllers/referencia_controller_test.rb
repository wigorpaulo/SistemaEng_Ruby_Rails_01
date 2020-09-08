require 'test_helper'

class ReferenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @referencium = referencia(:one)
  end

  test "should get index" do
    get referencia_url
    assert_response :success
  end

  test "should get new" do
    get new_referencium_url
    assert_response :success
  end

  test "should create referencium" do
    assert_difference('Referencium.count') do
      post referencia_url, params: { referencium: { ref_anomes: @referencium.ref_anomes } }
    end

    assert_redirected_to referencium_url(Referencium.last)
  end

  test "should show referencium" do
    get referencium_url(@referencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_referencium_url(@referencium)
    assert_response :success
  end

  test "should update referencium" do
    patch referencium_url(@referencium), params: { referencium: { ref_anomes: @referencium.ref_anomes } }
    assert_redirected_to referencium_url(@referencium)
  end

  test "should destroy referencium" do
    assert_difference('Referencium.count', -1) do
      delete referencium_url(@referencium)
    end

    assert_redirected_to referencia_url
  end
end
