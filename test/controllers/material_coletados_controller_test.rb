require 'test_helper'

class MaterialColetadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_coletado = material_coletados(:one)
  end

  test "should get index" do
    get material_coletados_url, as: :json
    assert_response :success
  end

  test "should create material_coletado" do
    assert_difference('MaterialColetado.count') do
      post material_coletados_url, params: { material_coletado: { ano: @material_coletado.ano, qnt_aluminio: @material_coletado.qnt_aluminio, qnt_aparas: @material_coletado.qnt_aparas, qnt_ferro: @material_coletado.qnt_ferro, qnt_fotolitos: @material_coletado.qnt_fotolitos, qnt_papelao: @material_coletado.qnt_papelao, qnt_plastico: @material_coletado.qnt_plastico } }, as: :json
    end

    assert_response 201
  end

  test "should show material_coletado" do
    get material_coletado_url(@material_coletado), as: :json
    assert_response :success
  end

  test "should update material_coletado" do
    patch material_coletado_url(@material_coletado), params: { material_coletado: { ano: @material_coletado.ano, qnt_aluminio: @material_coletado.qnt_aluminio, qnt_aparas: @material_coletado.qnt_aparas, qnt_ferro: @material_coletado.qnt_ferro, qnt_fotolitos: @material_coletado.qnt_fotolitos, qnt_papelao: @material_coletado.qnt_papelao, qnt_plastico: @material_coletado.qnt_plastico } }, as: :json
    assert_response 200
  end

  test "should destroy material_coletado" do
    assert_difference('MaterialColetado.count', -1) do
      delete material_coletado_url(@material_coletado), as: :json
    end

    assert_response 204
  end
end
