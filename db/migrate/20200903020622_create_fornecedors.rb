class CreateFornecedors < ActiveRecord::Migration[5.2]
  def change
    create_table :fornecedors do |t|
      t.string :razao_social
      t.string :fantasia
      t.string :cnpj

      t.timestamps
    end
  end
end
