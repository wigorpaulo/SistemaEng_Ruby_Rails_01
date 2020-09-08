class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :cpf
      t.string :nome
      t.integer :id_empresa

      t.timestamps
    end
  end
end
