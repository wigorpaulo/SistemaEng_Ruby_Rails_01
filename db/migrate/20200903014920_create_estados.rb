class CreateEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :estados do |t|
      t.string :descricao
      t.string :uf
      t.integer :id_pais

      t.timestamps
    end
  end
end
