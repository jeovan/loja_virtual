class AddCategoriaToProdutos < ActiveRecord::Migration[6.1]
  def change
    add_column :produtos, :categoria, :string
  end
end
