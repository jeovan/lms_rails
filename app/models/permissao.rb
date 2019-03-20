class Permissao < ApplicationRecord
  has_many :perfil_permissao
  has_many :perfil, through: :perfil_permissao
end
