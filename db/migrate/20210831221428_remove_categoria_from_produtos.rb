class RemoveCategoriaFromProdutos < ActiveRecord::Migration[6.1]
  def change
    remove_column :produtos, :categoria, :string
  end
end
