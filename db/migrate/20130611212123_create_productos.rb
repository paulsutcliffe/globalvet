class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :archivo_pdf
      t.string :imagen
      t.string :slug
      t.integer :tipo_id

      t.timestamps
    end
    add_index :productos, :slug, unique: true
  end
end
