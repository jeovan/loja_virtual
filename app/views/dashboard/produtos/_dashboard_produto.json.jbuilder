json.extract! dashboard_produto, :id, :nome, :descricao, :preco, :quantidade, :created_at, :updated_at
json.url dashboard_produto_url(dashboard_produto, format: :json)
