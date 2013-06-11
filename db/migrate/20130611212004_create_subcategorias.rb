class CreateSubcategorias < ActiveRecord::Migration
  def change
    create_table :subcategorias do |t|
      t.string :nombre
      t.string :imagen
      t.string :slug
      t.integer :categoria_id

      t.timestamps
    end
    add_index :subcategorias, :slug, unique: true
  end
end
