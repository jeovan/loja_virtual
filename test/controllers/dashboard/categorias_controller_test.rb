require "test_helper"

class Dashboard::CategoriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_categoria = dashboard_categorias(:one)
  end

  test "should get index" do
    get dashboard_categorias_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_categoria_url
    assert_response :success
  end

  test "should create dashboard_categoria" do
    assert_difference('Dashboard::Categoria.count') do
      post dashboard_categorias_url, params: { dashboard_categoria: { descricao: @dashboard_categoria.descricao, nome: @dashboard_categoria.nome } }
    end

    assert_redirected_to dashboard_categoria_url(Dashboard::Categoria.last)
  end

  test "should show dashboard_categoria" do
    get dashboard_categoria_url(@dashboard_categoria)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_categoria_url(@dashboard_categoria)
    assert_response :success
  end

  test "should update dashboard_categoria" do
    patch dashboard_categoria_url(@dashboard_categoria), params: { dashboard_categoria: { descricao: @dashboard_categoria.descricao, nome: @dashboard_categoria.nome } }
    assert_redirected_to dashboard_categoria_url(@dashboard_categoria)
  end

  test "should destroy dashboard_categoria" do
    assert_difference('Dashboard::Categoria.count', -1) do
      delete dashboard_categoria_url(@dashboard_categoria)
    end

    assert_redirected_to dashboard_categorias_url
  end
end
