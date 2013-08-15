class AddSubtipoIdToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :subtipo_id, :integer
  end
end
