class CreateTipoEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_enderecos do |t|
      t.string :descricao
      t.boolean :status

      t.timestamps
    end
  end
end
