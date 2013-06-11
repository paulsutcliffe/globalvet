Globalvet::Application.routes.draw do
  resources :productos


  resources :tipos


  resources :subcategorias


  resources :categorias


  resources :noticias


  resources :diapositivas


  resources :contactos


  root to: 'home#index'

  get "home/index"

end
