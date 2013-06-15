class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :archivo_pdf
      t.string :imagen
      t.integer :tipo_id
      t.integer :subcategoria_id

      t.timestamps
    end
  end
end
