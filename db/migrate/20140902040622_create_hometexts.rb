class CreateHometexts < ActiveRecord::Migration
  def change
    create_table :hometexts do |t|
      t.string :title
      t.text :content
      t.string :link

      t.timestamps
    end
    Hometext.create(tile: 'Global News', content: 'Comercializar productos en óptimas condiciones de seguridad, inocuidad y efectividad que cumplan con el marco legal de las normas nacionales e internacionales...', link: '/noticias')
    Hometext.create(tile: 'Productos', content: 'Comercializar productos en óptimas condiciones de seguridad, inocuidad y efectividad que cumplan con el marco legal de las normas nacionales e internacionales...', link: '/productos')
    Hometext.create(tile: 'Marcas', content: 'Comercializar productos en óptimas condiciones de seguridad, inocuidad y efectividad que cumplan con el marco legal de las normas nacionales e internacionales...', link: '/marcas')
  end
end
