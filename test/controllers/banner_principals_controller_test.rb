require 'test_helper'

class BannerPrincipalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banner_principal = banner_principals(:one)
  end

  test "should get index" do
    get banner_principals_url, as: :json
    assert_response :success
  end

  test "should create banner_principal" do
    assert_difference('BannerPrincipal.count') do
      post banner_principals_url, params: { banner_principal: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show banner_principal" do
    get banner_principal_url(@banner_principal), as: :json
    assert_response :success
  end

  test "should update banner_principal" do
    patch banner_principal_url(@banner_principal), params: { banner_principal: {  } }, as: :json
    assert_response 200
  end

  test "should destroy banner_principal" do
    assert_difference('BannerPrincipal.count', -1) do
      delete banner_principal_url(@banner_principal), as: :json
    end

    assert_response 204
  end
end
