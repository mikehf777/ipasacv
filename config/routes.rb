Ipasa::Application.routes.draw do
  devise_for :users

  root :to => 'pages#home'
  resources :profiles
  resources :types
  resources :rents
  resources :lease_structures       
  resources :rent_documents
  resources :invoices
  resources :surcharges
  resources :documents  
  resources :duties  
  resources :leases
  resources :localities
  resources :properties
  resources :messages
  resources :pages
  
  namespace :admin do
    root :to => 'base#index'
      match "propiedades" , :to => "properties#tab"
      match "perfiles", :to => "profiles#tab"
      match "localidades", :to => "localities#tab"
      match "servicios", :to => "services#tab"
      match "tiposinmueble", :to => "types#tab"
      match "arrendamientos",:to => "leases#tab"
      match "Videos",:to=> "videos#tab"
      resources :properties
      resources :profiles
      resources :leases
      resources :localities
      resources :services
      resources :types
      resources :videos
  end
  match 'message'   => 'messages#new', :as => 'message', :via => :get
  match 'message'   => 'messages#create', :as => 'message', :via => :post
  
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
