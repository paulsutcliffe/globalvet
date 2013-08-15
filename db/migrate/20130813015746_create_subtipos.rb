class CreateSubtipos < ActiveRecord::Migration
  def change
    create_table :subtipos do |t|
      t.string :nombre
      t.string :imagen
      t.integer :tipo_id
      t.string :slug

      t.timestamps
    end
    add_index :subtipos, :slug, unique: true
  end
end
