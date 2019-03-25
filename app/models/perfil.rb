class Perfil < ApplicationRecord
  validates :nome, presence: true
  validates :descricao, presence: true
  has_many :usuario
  has_many :perfil_permissao
  has_many :permissao, through: :perfil_permissao
end
