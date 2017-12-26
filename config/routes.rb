Rails.application.routes.draw do

  resources :blogs
  resources :posts

  root 'posts#index'

  # get 'posts/index'
  # 아래처럼 변경해줘야 한다.
#   get '/posts' => 'posts#index'
#
#   get '/posts/new' => 'posts#new'
# # Create 도 수정해봅시다
#   # get 'posts/create'
#   post '/posts' => 'posts#create'
#
#   # get 'posts/show/:id' => 'posts#show'
#   # 아래처럼 변경해줘야 한다.
#   get '/posts/:id' => 'posts#show'
#
#   # get 'posts/edit/:id' => 'posts#edit'
#   get 'posts/:id/edit' => 'posts#edit'
#
#   # get 'posts/update/:id' => 'posts#update'
#   put '/posts/:id' => 'posts#update'
#
#   # get 'posts/destroy/:id' => 'posts#destroy'
#   delete '/posts/:id' => 'posts#destroy'
#



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
