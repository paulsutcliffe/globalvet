class CreateNaturalezas < ActiveRecord::Migration
  def change
    create_table :naturalezas do |t|
      t.integer :categoria_id
      t.integer :reino_id

      t.timestamps
    end
  end
end
