class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :nombre
      t.string :imagen
      t.string :slug
      t.integer :subcategoria_id

      t.timestamps
    end
    add_index :tipos, :slug, unique: true
  end
end
