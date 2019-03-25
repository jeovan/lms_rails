class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_validation   :set_default_role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :perfil


  def set_default_role
    puts '-------------'
    self.perfil ||= Perfil.all.first
  end

end
