require 'test_helper'

class PerfisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perfi = perfis(:one)
  end

  test "should get index" do
    get perfis_url
    assert_response :success
  end

  test "should get new" do
    get new_perfi_url
    assert_response :success
  end

  test "should create perfi" do
    assert_difference('Perfil.count') do
      post perfis_url, params: { perfi: { descricao: @perfi.descricao, nome: @perfi.nome } }
    end

    assert_redirected_to perfi_url(Perfil.last)
  end

  test "should show perfi" do
    get perfi_url(@perfi)
    assert_response :success
  end

  test "should get edit" do
    get edit_perfi_url(@perfi)
    assert_response :success
  end

  test "should update perfi" do
    patch perfi_url(@perfi), params: { perfi: { descricao: @perfi.descricao, nome: @perfi.nome } }
    assert_redirected_to perfi_url(@perfi)
  end

  test "should destroy perfi" do
    assert_difference('Perfil.count', -1) do
      delete perfi_url(@perfi)
    end

    assert_redirected_to perfis_url
  end
end
