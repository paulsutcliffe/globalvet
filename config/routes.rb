Globalvet::Application.routes.draw do

  get "quienes_somos/index"

  resources :marcas

  resources :categorias do
    resources :subcategorias do
      resources :productos
      resources :tipos do
        resources :productos
      end
    end
  end

  resources :noticias

  resources :diapositivas

  resources :contactos

  root to: 'home#index'

end
