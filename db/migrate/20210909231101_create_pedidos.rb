class CreatePedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedidos do |t|
      t.references :usuario
      t.decimal :valor_total
      t.string :codigo
      t.timestamps
    end
  end
end
