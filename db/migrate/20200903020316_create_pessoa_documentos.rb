class CreatePessoaDocumentos < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoa_documentos do |t|
      t.integer :id_pessoa
      t.string :descricao

      t.timestamps
    end
  end
end
