Globalvet::Application.routes.draw do

  devise_for :admins

  match "quienes_somos" => "quienes_somos#index", via: :get

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
