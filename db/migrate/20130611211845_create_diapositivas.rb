class CreateDiapositivas < ActiveRecord::Migration
  def change
    create_table :diapositivas do |t|
      t.string :slide
      t.string :titulo
      t.string :link

      t.timestamps
    end
  end
end
