require 'test_helper'

class SustentabilidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sustentabilidade = sustentabilidades(:one)
  end

  test "should get index" do
    get sustentabilidades_url, as: :json
    assert_response :success
  end

  test "should create sustentabilidade" do
    assert_difference('Sustentabilidade.count') do
      post sustentabilidades_url, params: { sustentabilidade: { painel_description: @sustentabilidade.painel_description, painel_title: @sustentabilidade.painel_title } }, as: :json
    end

    assert_response 201
  end

  test "should show sustentabilidade" do
    get sustentabilidade_url(@sustentabilidade), as: :json
    assert_response :success
  end

  test "should update sustentabilidade" do
    patch sustentabilidade_url(@sustentabilidade), params: { sustentabilidade: { painel_description: @sustentabilidade.painel_description, painel_title: @sustentabilidade.painel_title } }, as: :json
    assert_response 200
  end

  test "should destroy sustentabilidade" do
    assert_difference('Sustentabilidade.count', -1) do
      delete sustentabilidade_url(@sustentabilidade), as: :json
    end

    assert_response 204
  end
end
