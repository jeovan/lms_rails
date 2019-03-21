# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural 'usuario', 'usuarios'
  inflect.plural 'pessoa', 'pessoas'
  inflect.plural 'perfil', 'perfis'
  inflect.plural 'permissao', 'permissoes'
  inflect.plural 'perfil_permissao', 'perfis_permissoes'

  inflect.singular  'usuarios', 'usuario'
  inflect.singular  'pessoas', 'pessoa'
  inflect.singular  'perfis', 'perfil'
  inflect.singular  'permissoes', 'permissao'
  inflect.singular  'perfis_permissoes', 'perfil_permissao'
end
