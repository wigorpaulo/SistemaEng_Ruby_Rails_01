class CreateFornecedorEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :fornecedor_enderecos do |t|
      t.integer :id_fornecedor
      t.integer :id_endereco
      t.integer :id_tipo_endereco

      t.timestamps
    end
  end
end
