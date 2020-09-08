class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.integer :id_pessoa
      t.string :user_name
      t.string :senha

      t.timestamps
    end
  end
end
