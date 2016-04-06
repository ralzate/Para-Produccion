Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  resources :quienes_somos, :path => "administrar_quienes_somos"
  resources :servicios, :path => "administrar_servicios"
  resources :experiencias, :path => "administrar_experiencias"
  resources :noticias, :path => "administrar_noticias"
  resources :contactos, :path => "administrar_contactos"


  get "noticias", :to => "welcome#comunicados"
  get "noticia", :to => "welcome#mostrar_comunicado"
  get "experiencias", :to => "welcome#experiencias"
  get "servicios", :to => "welcome#servicios"
  get "quienes_somos", :to => "welcome#quienes_somos"
  get "contactanos", :to => "welcome#contactanos"
  post "/welcome/contacto", as: :create_contacto


  devise_for :usuarios
  
  post "/contactos/create", as: :crear_contacto
  get 'profile', to: 'usuarios#profile'

  resources :usuarios,  only: [:new, :create, :index, :destroy, :show, :edit, :update]  do
      resources :productos
  end

  authenticated :usuario do
    root 'welcome#index'
  end

  unauthenticated :usuario do
    devise_scope :usuario do
      root 'welcome#landing', as: :landing_root
    end
  end

end
