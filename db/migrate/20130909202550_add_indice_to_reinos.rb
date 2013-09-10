class AddIndiceToReinos < ActiveRecord::Migration
  def change
    add_column :reinos, :indice, :integer
  end
end
