require "test_helper"

class Dashboard::ProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_produto = dashboard_produtos(:one)
  end

  test "should get index" do
    get dashboard_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_produto_url
    assert_response :success
  end

  test "should create dashboard_produto" do
    assert_difference('Dashboard::Produto.count') do
      post dashboard_produtos_url, params: { dashboard_produto: { descricao: @dashboard_produto.descricao, nome: @dashboard_produto.nome, preco: @dashboard_produto.preco, quantidade: @dashboard_produto.quantidade } }
    end

    assert_redirected_to dashboard_produto_url(Dashboard::Produto.last)
  end

  test "should show dashboard_produto" do
    get dashboard_produto_url(@dashboard_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_produto_url(@dashboard_produto)
    assert_response :success
  end

  test "should update dashboard_produto" do
    patch dashboard_produto_url(@dashboard_produto), params: { dashboard_produto: { descricao: @dashboard_produto.descricao, nome: @dashboard_produto.nome, preco: @dashboard_produto.preco, quantidade: @dashboard_produto.quantidade } }
    assert_redirected_to dashboard_produto_url(@dashboard_produto)
  end

  test "should destroy dashboard_produto" do
    assert_difference('Dashboard::Produto.count', -1) do
      delete dashboard_produto_url(@dashboard_produto)
    end

    assert_redirected_to dashboard_produtos_url
  end
end
