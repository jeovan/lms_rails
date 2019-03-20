require "application_system_test_case"

class PerfilsTest < ApplicationSystemTestCase
  setup do
    @perfi = perfis(:one)
  end

  test "visiting the index" do
    visit perfis_url
    assert_selector "h1", text: "Perfils"
  end

  test "creating a Perfil" do
    visit perfis_url
    click_on "New Perfil"

    fill_in "Descricao", with: @perfi.descricao
    fill_in "Nome", with: @perfi.nome
    click_on "Create Perfil"

    assert_text "Perfil was successfully created"
    click_on "Back"
  end

  test "updating a Perfil" do
    visit perfis_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @perfi.descricao
    fill_in "Nome", with: @perfi.nome
    click_on "Update Perfil"

    assert_text "Perfil was successfully updated"
    click_on "Back"
  end

  test "destroying a Perfil" do
    visit perfis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Perfil was successfully destroyed"
  end
end
