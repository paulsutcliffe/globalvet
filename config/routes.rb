Globalvet::Application.routes.draw do

  get "productos/autocompletar_nombre_de_producto"

  match "/resultado_de_busqueda" => "productos#resultado_de_busqueda", via: :get

  get "productos/sin_resultados"

  devise_for :admins

  match "quienes_somos" => "quienes_somos#index", via: :get

  resources :marcas, :except => :show

  resources :reinos do
    member do
      get :enlistar
      get :categorias
    end
    post :agregar_categoria
    post :eliminar_categoria

    resources :categorias do
      resources :subcategorias do
        resources :tipos do
          resources :productos
        end
      end
     end
  end

  resources :noticias

  resources :diapositivas, :except => :show

  resources :contactos

  root to: 'home#index'

end
