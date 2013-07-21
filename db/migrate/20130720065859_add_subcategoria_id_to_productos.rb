class AddSubcategoriaIdToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :subcategoria_id, :integer
  end
end
