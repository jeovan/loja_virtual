class Dashboard::Produto < ApplicationRecord
  self.table_name = "produtos"

  validates :nome, presence: {
    message: 'o campo nome não pode ser vazio'
  }
  validates :preco, presence: true
  validates :quantidade, presence: true
  validates :categoria, presence: true

  validate :validar_nome


  def validar_nome
    if self.nome == 'sefin'
      errors.add(:nome, 'palavra não pode ser usada')
    end
  end
end
