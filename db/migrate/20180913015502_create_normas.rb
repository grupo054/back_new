class CreateNormas < ActiveRecord::Migration[5.1]
  def change
    create_table :normas do |t|
      t.string :descripcion
      t.string :img_vid
      t.string :tipo
      t.references :categoria_normas, foreign_key: true

      t.timestamps
    end
  end
end
