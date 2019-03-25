# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
# Rails.application.config.assets.precompile += %w( swall.js )
# Rails.application.config.assets.precompile += %w(perfis.scss perfis.js)
# puts Rails.application.config.assets.precompile.inspect 
Rails.application.config.assets.precompile = []
Dir[Rails.root.join("app", "assets", "**", "*.*")].each do |file|
  ext = file.split('/').last.split('.').last
  Rails.application.config.assets.precompile << file if %w(scss js css).include?(ext)
  
end
# Rails.application.config.assets.precompile += %w(*.css *.js *.scss)
Rails.application.config.assets.precompile += %w(*.svg *.eot *.woff *.ttf)

# puts Rails.application.config.assets.precompile.inspect 
# config.assets.precompile = 