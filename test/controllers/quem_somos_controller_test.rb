require 'test_helper'

class QuemSomosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quem_somo = quem_somos(:one)
  end

  test "should get index" do
    get quem_somos_url, as: :json
    assert_response :success
  end

  test "should create quem_somo" do
    assert_difference('QuemSomo.count') do
      post quem_somos_url, params: { quem_somo: { painel_description: @quem_somo.painel_description, painel_title: @quem_somo.painel_title } }, as: :json
    end

    assert_response 201
  end

  test "should show quem_somo" do
    get quem_somo_url(@quem_somo), as: :json
    assert_response :success
  end

  test "should update quem_somo" do
    patch quem_somo_url(@quem_somo), params: { quem_somo: { painel_description: @quem_somo.painel_description, painel_title: @quem_somo.painel_title } }, as: :json
    assert_response 200
  end

  test "should destroy quem_somo" do
    assert_difference('QuemSomo.count', -1) do
      delete quem_somo_url(@quem_somo), as: :json
    end

    assert_response 204
  end
end
