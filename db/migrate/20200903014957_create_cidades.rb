class CreateCidades < ActiveRecord::Migration[5.2]
  def change
    create_table :cidades do |t|
      t.string :descricao
      t.integer :id_estado

      t.timestamps
    end
  end
end
