GVS::Application.routes.draw do

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :contact, :only => [:new, :create]

  match '/signin', to:'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  match '/signup', to: 'users#new', via: 'get'
  match '/about', to: 'pages#about', via: 'get'
  match '/concept', to: 'pages#concept', via: 'get'
  match '/previz', to: 'pages#previz', via: 'get'
  match '/vfx', to: 'pages#vfx', via: 'get'
  match '/character', to: 'pages#character', via: 'get'
  match '/storyboard', to: 'pages#storyboard', via: 'get'
  match '/props', to: 'pages#props', via: 'get'
  match '/filmaudio', to: 'pages#filmaudio', via: 'get'
  match '/editorial', to: 'pages#editorial', via: 'get'
  match '/partners', to: 'pages#partners', via: 'get'
  match '/development', to: 'pages#development', via: 'get'
  match '/contact', to: 'contact#new', :via => :get
  match '/contact', to: 'contact#create', :via => :post



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'pages#home'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
