class CreatePerfisPermissoes < ActiveRecord::Migration[5.2]
  def change
    create_table :perfis_permissoes do |t|
      t.references :perfil, foreign_key: true
      t.references :permissao, foreign_key: true

      t.timestamps
    end
  end
end
