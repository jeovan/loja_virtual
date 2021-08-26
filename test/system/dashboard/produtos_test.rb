require "application_system_test_case"

class Dashboard::ProdutosTest < ApplicationSystemTestCase
  setup do
    @dashboard_produto = dashboard_produtos(:one)
  end

  test "visiting the index" do
    visit dashboard_produtos_url
    assert_selector "h1", text: "Dashboard/Produtos"
  end

  test "creating a Produto" do
    visit dashboard_produtos_url
    click_on "New Dashboard/Produto"

    fill_in "Descricao", with: @dashboard_produto.descricao
    fill_in "Nome", with: @dashboard_produto.nome
    fill_in "Preco", with: @dashboard_produto.preco
    fill_in "Quantidade", with: @dashboard_produto.quantidade
    click_on "Create Produto"

    assert_text "Produto was successfully created"
    click_on "Back"
  end

  test "updating a Produto" do
    visit dashboard_produtos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @dashboard_produto.descricao
    fill_in "Nome", with: @dashboard_produto.nome
    fill_in "Preco", with: @dashboard_produto.preco
    fill_in "Quantidade", with: @dashboard_produto.quantidade
    click_on "Update Produto"

    assert_text "Produto was successfully updated"
    click_on "Back"
  end

  test "destroying a Produto" do
    visit dashboard_produtos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Produto was successfully destroyed"
  end
end
