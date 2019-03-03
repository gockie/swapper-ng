require 'test_helper'

class BoostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boost = boosts(:one)
  end

  test "should get index" do
    get boosts_url
    assert_response :success
  end

  test "should get new" do
    get new_boost_url
    assert_response :success
  end

  test "should create boost" do
    assert_difference('Boost.count') do
      post boosts_url, params: { boost: { boost_type: @boost.boost_type, paid: @boost.paid, product_id: @boost.product_id, status: @boost.status } }
    end

    assert_redirected_to boost_url(Boost.last)
  end

  test "should show boost" do
    get boost_url(@boost)
    assert_response :success
  end

  test "should get edit" do
    get edit_boost_url(@boost)
    assert_response :success
  end

  test "should update boost" do
    patch boost_url(@boost), params: { boost: { boost_type: @boost.boost_type, paid: @boost.paid, product_id: @boost.product_id, status: @boost.status } }
    assert_redirected_to boost_url(@boost)
  end

  test "should destroy boost" do
    assert_difference('Boost.count', -1) do
      delete boost_url(@boost)
    end

    assert_redirected_to boosts_url
  end
end
