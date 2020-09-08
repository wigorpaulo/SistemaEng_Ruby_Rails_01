class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :razao_social
      t.string :fantasia
      t.integer :id_endereco
      t.binary :logo_tipo

      t.timestamps
    end
  end
end
