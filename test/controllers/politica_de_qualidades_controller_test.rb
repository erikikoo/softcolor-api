require 'test_helper'

class PoliticaDeQualidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @politica_de_qualidade = politica_de_qualidades(:one)
  end

  test "should get index" do
    get politica_de_qualidades_url, as: :json
    assert_response :success
  end

  test "should create politica_de_qualidade" do
    assert_difference('PoliticaDeQualidade.count') do
      post politica_de_qualidades_url, params: { politica_de_qualidade: { painel_one_description: @politica_de_qualidade.painel_one_description, painel_one_title: @politica_de_qualidade.painel_one_title, painel_two_description: @politica_de_qualidade.painel_two_description, painel_two_title: @politica_de_qualidade.painel_two_title } }, as: :json
    end

    assert_response 201
  end

  test "should show politica_de_qualidade" do
    get politica_de_qualidade_url(@politica_de_qualidade), as: :json
    assert_response :success
  end

  test "should update politica_de_qualidade" do
    patch politica_de_qualidade_url(@politica_de_qualidade), params: { politica_de_qualidade: { painel_one_description: @politica_de_qualidade.painel_one_description, painel_one_title: @politica_de_qualidade.painel_one_title, painel_two_description: @politica_de_qualidade.painel_two_description, painel_two_title: @politica_de_qualidade.painel_two_title } }, as: :json
    assert_response 200
  end

  test "should destroy politica_de_qualidade" do
    assert_difference('PoliticaDeQualidade.count', -1) do
      delete politica_de_qualidade_url(@politica_de_qualidade), as: :json
    end

    assert_response 204
  end
end
