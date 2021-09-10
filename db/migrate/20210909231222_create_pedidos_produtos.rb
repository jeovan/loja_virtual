class CreatePedidosProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedidos_produtos do |t|
      t.references :pedido
      t.references :produto
      t.timestamps
    end
  end
end
