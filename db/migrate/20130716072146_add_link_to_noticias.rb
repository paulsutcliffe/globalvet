class AddLinkToNoticias < ActiveRecord::Migration
  def change
    add_column :noticias, :link, :string
  end
end
