class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.text :contenido
      t.string :imagen

      t.timestamps
    end
  end
end
