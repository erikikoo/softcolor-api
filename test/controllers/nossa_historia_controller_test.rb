require 'test_helper'

class NossaHistoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nossa_historium = nossa_historia(:one)
  end

  test "should get index" do
    get nossa_historia_url, as: :json
    assert_response :success
  end

  test "should create nossa_historium" do
    assert_difference('NossaHistorium.count') do
      post nossa_historia_url, params: { nossa_historium: { painel_description: @nossa_historium.painel_description, painel_title: @nossa_historium.painel_title } }, as: :json
    end

    assert_response 201
  end

  test "should show nossa_historium" do
    get nossa_historium_url(@nossa_historium), as: :json
    assert_response :success
  end

  test "should update nossa_historium" do
    patch nossa_historium_url(@nossa_historium), params: { nossa_historium: { painel_description: @nossa_historium.painel_description, painel_title: @nossa_historium.painel_title } }, as: :json
    assert_response 200
  end

  test "should destroy nossa_historium" do
    assert_difference('NossaHistorium.count', -1) do
      delete nossa_historium_url(@nossa_historium), as: :json
    end

    assert_response 204
  end
end
