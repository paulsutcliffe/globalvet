class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.text :contenido
      t.string :imagen
      t.string :slug

      t.timestamps
    end
    add_index :noticias, :slug, unique: true
  end
end
