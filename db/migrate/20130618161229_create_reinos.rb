class CreateReinos < ActiveRecord::Migration
  def change
    create_table :reinos do |t|
      t.string :nombre
      t.string :imagen
      t.string :slug

      t.timestamps
    end
    add_index :reinos, :slug, unique: true
  end
end
