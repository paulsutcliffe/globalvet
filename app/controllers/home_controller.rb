class HomeController < ApplicationController
  def index
    @diapositivas = Diapositiva.all
    @infonews = Hometext.find(1)
    @infoproductos = Hometext.find(2)
    @infomarcas = Hometext.find(3)
  end
end
