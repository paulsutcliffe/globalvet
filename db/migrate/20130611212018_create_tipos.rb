class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :nombre
      t.string :imagen
      t.integer :subcategoria_id

      t.timestamps
    end
  end
end
