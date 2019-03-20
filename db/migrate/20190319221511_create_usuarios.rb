class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      
      t.references :perfil
      t.timestamps
    end
  end
end
