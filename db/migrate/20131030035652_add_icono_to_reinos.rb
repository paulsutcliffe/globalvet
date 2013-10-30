class AddIconoToReinos < ActiveRecord::Migration
  def change
    add_column :reinos, :icono, :string
  end
end
