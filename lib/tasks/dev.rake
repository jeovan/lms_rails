namespace :dev do
  desc "TODO"
  task create_scaffold: :environment do
    puts %x(rails g scaffold usuario)
    puts %x(rails g scaffold pessoa)
    puts %x(rails g scaffold perfil nome:string descricao:text)
    puts %x(rails g model permissao nome:string descricao:text)
    puts %x(rails g model perfil_permissao  perfil:references permissao:references)
    # puts %x(rails g devise:install)
    # puts %x(rails g devise usuario)
    # puts %x(rails g cancan:ability)
  end

  task destroy_scaffold: :environment do
    puts %x(rails destroy scaffold usuario)
    puts %x(rails destroy scaffold pessoa)
    puts %x(rails destroy model  perfil)
    puts %x(rails destroy model  permissao)
    puts %x(rails destroy model perfil_permissao)
    # puts %x(rails db:drop)
    # puts %x(rails destroy devise:install)
    # puts %x(rails destroy devise usuario)
    # puts %x(rails destroy cancan:ability)
  end

end
