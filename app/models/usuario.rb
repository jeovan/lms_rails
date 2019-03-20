class Usuario < ApplicationRecord
  belongs_to :perfil
  after_initialize :set_defaults, unless: :persisted?
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def set_defaults
    self.perfil_id  ||= 1
  end
end
