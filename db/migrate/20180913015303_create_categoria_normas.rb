class CreateCategoriaNormas < ActiveRecord::Migration[5.1]
  def change
    create_table :categoria_normas do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
