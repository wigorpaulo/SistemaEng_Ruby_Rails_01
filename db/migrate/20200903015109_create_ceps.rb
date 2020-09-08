class CreateCeps < ActiveRecord::Migration[5.2]
  def change
    create_table :ceps do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
