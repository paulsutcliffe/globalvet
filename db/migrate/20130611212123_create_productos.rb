class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :archivo_pdf

      t.timestamps
    end
  end
end
