class AddCategoriaToProdutos < ActiveRecord::Migration[6.1]
  def change
    add_reference :produtos, :categoria, null: false, foreign_key: true
  end
end
