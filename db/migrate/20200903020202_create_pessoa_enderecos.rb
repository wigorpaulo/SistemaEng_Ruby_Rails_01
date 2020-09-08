class CreatePessoaEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoa_enderecos do |t|
      t.integer :id_pessoa
      t.integer :id_endereco
      t.integer :id_tipo_endereco

      t.timestamps
    end
  end
end
