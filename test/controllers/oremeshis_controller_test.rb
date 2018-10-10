require 'test_helper'

class OremeshisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oremeshi = oremeshis(:one)
  end

  test "should get index" do
    get oremeshis_url
    assert_response :success
  end

  test "should get new" do
    get new_oremeshi_url
    assert_response :success
  end

  test "should create oremeshi" do
    assert_difference('Oremeshi.count') do
      post oremeshis_url, params: { oremeshi: { category: @oremeshi.category, final: @oremeshi.final, ingre: @oremeshi.ingre, step1: @oremeshi.step1, step2: @oremeshi.step2, step3: @oremeshi.step3, step4: @oremeshi.step4, time: @oremeshi.time, title: @oremeshi.title } }
    end

    assert_redirected_to oremeshi_url(Oremeshi.last)
  end

  test "should show oremeshi" do
    get oremeshi_url(@oremeshi)
    assert_response :success
  end

  test "should get edit" do
    get edit_oremeshi_url(@oremeshi)
    assert_response :success
  end

  test "should update oremeshi" do
    patch oremeshi_url(@oremeshi), params: { oremeshi: { category: @oremeshi.category, final: @oremeshi.final, ingre: @oremeshi.ingre, step1: @oremeshi.step1, step2: @oremeshi.step2, step3: @oremeshi.step3, step4: @oremeshi.step4, time: @oremeshi.time, title: @oremeshi.title } }
    assert_redirected_to oremeshi_url(@oremeshi)
  end

  test "should destroy oremeshi" do
    assert_difference('Oremeshi.count', -1) do
      delete oremeshi_url(@oremeshi)
    end

    assert_redirected_to oremeshis_url
  end
end
