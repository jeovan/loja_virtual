class Pedido < ApplicationRecord
  has_many :pedidos_produtos
  has_many :produtos, through: :pedidos_produtos

  belongs_to :usuario
end
