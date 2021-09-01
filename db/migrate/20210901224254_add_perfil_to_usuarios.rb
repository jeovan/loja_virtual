class AddPerfilToUsuarios < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :perfil, :string
  end
end
