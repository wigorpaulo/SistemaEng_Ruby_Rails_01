class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.string :descricao
      t.string :complemento
      t.string :numero
      t.integer :id_bairro
      t.integer :id_cep

      t.timestamps
    end
  end
end
