require 'test_helper'

class SistemaDeImpressaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sistema_de_impressao = sistema_de_impressaos(:one)
  end

  test "should get index" do
    get sistema_de_impressaos_url, as: :json
    assert_response :success
  end

  test "should create sistema_de_impressao" do
    assert_difference('SistemaDeImpressao.count') do
      post sistema_de_impressaos_url, params: { sistema_de_impressao: { painel_one_description: @sistema_de_impressao.painel_one_description, painel_one_title: @sistema_de_impressao.painel_one_title, painel_principal_description: @sistema_de_impressao.painel_principal_description, painel_principal_title: @sistema_de_impressao.painel_principal_title, painel_tree_description: @sistema_de_impressao.painel_tree_description, painel_tree_title: @sistema_de_impressao.painel_tree_title, painel_two_description: @sistema_de_impressao.painel_two_description, painel_two_title: @sistema_de_impressao.painel_two_title } }, as: :json
    end

    assert_response 201
  end

  test "should show sistema_de_impressao" do
    get sistema_de_impressao_url(@sistema_de_impressao), as: :json
    assert_response :success
  end

  test "should update sistema_de_impressao" do
    patch sistema_de_impressao_url(@sistema_de_impressao), params: { sistema_de_impressao: { painel_one_description: @sistema_de_impressao.painel_one_description, painel_one_title: @sistema_de_impressao.painel_one_title, painel_principal_description: @sistema_de_impressao.painel_principal_description, painel_principal_title: @sistema_de_impressao.painel_principal_title, painel_tree_description: @sistema_de_impressao.painel_tree_description, painel_tree_title: @sistema_de_impressao.painel_tree_title, painel_two_description: @sistema_de_impressao.painel_two_description, painel_two_title: @sistema_de_impressao.painel_two_title } }, as: :json
    assert_response 200
  end

  test "should destroy sistema_de_impressao" do
    assert_difference('SistemaDeImpressao.count', -1) do
      delete sistema_de_impressao_url(@sistema_de_impressao), as: :json
    end

    assert_response 204
  end
end
