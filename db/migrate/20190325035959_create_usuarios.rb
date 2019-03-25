class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.references :perfil, foreign_key: true

      t.timestamps
    end
  end
end
