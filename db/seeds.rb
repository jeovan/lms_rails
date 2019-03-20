# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  permissoes = Permissao.create([
    {:acao => 'manage',:modulo => 'usuario', :descricao => 'Gerencia dados dos usuarios'},
    {:acao => 'manage',:modulo => 'perfil', :descricao => 'Gerencia dados dos perfis'}
  ])

  perfil = Perfil.where(:nome => 'administrador', :descricao => 'Acesso total ao sistema').first_or_create

  PerfilPermissao.create([
    {:perfil =>perfil, :permissao => permissoes[0]},
    {:perfil =>perfil, :permissao => permissoes[1]}
  ])


