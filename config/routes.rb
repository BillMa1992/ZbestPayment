Rails.application.routes.draw do
  resources :pins

  devise_for :users
  root "pages#_index"
  get "solution1" => "pages#solution1"
  get "solution2" => "pages#solution2"
  get "solution3" => "pages#solution3"
  get "solution4" => "pages#solution4"
  get "product1" => "pages#product1"
  get "product2" => "pages#product2"
  get "product3" => "pages#product3"
  get "services" => "pages#services"
  get "joinus" => "pages#joinus"
  get "contact" => "pages#contactus"
  get "privacy" => "pages#privacy"
  get "job1"=>"pages#Marketingjob1"
  get "job2"=>"pages#Marketingjob2"
  get "job3"=>"pages#Marketingjob3"

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  
  # get "about" => "pages#about"
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
