class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :nombre
      t.string :imagen

      t.timestamps
    end
  end
end
