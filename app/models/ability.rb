class Ability
  include CanCan::Ability

  def initialize(usuario)
    usuario.perfil.permissao.each do |permissao|
      # can :"#{permissao[:acao]}", permissao[:modulo].camelize.constantize
      can :"#{permissao[:acao]}", permissao[:modulo].camelize.constantize
    end
  end
end
