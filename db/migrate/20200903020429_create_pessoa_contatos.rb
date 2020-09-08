class CreatePessoaContatos < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoa_contatos do |t|
      t.integer :id_pessoa
      t.integer :telefone
      t.integer :celular
      t.integer :num_whats_zap
      t.string :email

      t.timestamps
    end
  end
end
