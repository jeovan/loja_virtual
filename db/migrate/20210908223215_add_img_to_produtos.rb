class AddImgToProdutos < ActiveRecord::Migration[6.1]
  def change
    add_column :produtos, :img, :string
  end
end
