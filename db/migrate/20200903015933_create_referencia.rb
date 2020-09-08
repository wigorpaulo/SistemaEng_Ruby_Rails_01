class CreateReferencia < ActiveRecord::Migration[5.2]
  def change
    create_table :referencia do |t|
      t.integer :ref_anomes

      t.timestamps
    end
  end
end
