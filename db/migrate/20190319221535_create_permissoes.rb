class CreatePermissoes < ActiveRecord::Migration[5.2]
  def change
    create_table :permissoes do |t|
      t.string :acao
      t.string :modulo
      t.text :descricao

      t.timestamps
    end
  end
end
