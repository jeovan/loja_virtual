require "application_system_test_case"

class Dashboard::CategoriasTest < ApplicationSystemTestCase
  setup do
    @dashboard_categoria = dashboard_categorias(:one)
  end

  test "visiting the index" do
    visit dashboard_categorias_url
    assert_selector "h1", text: "Dashboard/Categorias"
  end

  test "creating a Categoria" do
    visit dashboard_categorias_url
    click_on "New Dashboard/Categoria"

    fill_in "Descricao", with: @dashboard_categoria.descricao
    fill_in "Nome", with: @dashboard_categoria.nome
    click_on "Create Categoria"

    assert_text "Categoria was successfully created"
    click_on "Back"
  end

  test "updating a Categoria" do
    visit dashboard_categorias_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @dashboard_categoria.descricao
    fill_in "Nome", with: @dashboard_categoria.nome
    click_on "Update Categoria"

    assert_text "Categoria was successfully updated"
    click_on "Back"
  end

  test "destroying a Categoria" do
    visit dashboard_categorias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categoria was successfully destroyed"
  end
end
