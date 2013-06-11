class CreateSubcategorias < ActiveRecord::Migration
  def change
    create_table :subcategorias do |t|
      t.string :nombre
      t.string :imagen
      t.integer :categoria_id

      t.timestamps
    end
  end
end
