class CreateBairros < ActiveRecord::Migration[5.2]
  def change
    create_table :bairros do |t|
      t.string :descricao
      t.integer :id_cidade

      t.timestamps
    end
  end
end
