class PedidoProduto < ApplicationRecord
  belongs_to :pedido
  belongs_to :produto, :class_name => 'Dashboard::Produto'
end
