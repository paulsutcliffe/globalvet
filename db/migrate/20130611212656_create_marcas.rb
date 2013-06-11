class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :logo
      t.string :link

      t.timestamps
    end
  end
end
