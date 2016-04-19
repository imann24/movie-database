Rails.application.routes.draw do
  resources :studio_to_movies

  resources :screenwriter_to_movies

  resources :director_to_movies

  resources :actor_to_movies

  resources :movies

  get "movies/:id/edit_credits", to: "movies#edit_credits"
  get "actors/:id/edit_credits", to: "actors#edit_credits"
  post "actors/:id/add_movie", to: "actors#add_movie"
  post "actors/:id/remove_movie", to: "actors#remove_movie"
  get "directors/:id/edit_credits", to: "directors#edit_credits"
  post "directors/:id/add_movie", to: "directors#add_movie"
  post "directors/:id/remove_movie", to: "directors#remove_movie"
  get "studios/:id/edit_credits", to: "studios#edit_credits"
  post "studios/:id/add_movie", to: "studios#add_movie"
  post "studios/:id/remove_movie", to: "studios#remove_movie"
  get "screenwriters/:id/edit_credits", to: "screenwriters#edit_credits"
  post "screenwriters/:id/add_movie", to: "screenwriters#add_movie"
  post "screenwriters/:id/remove_movie", to: "screenwriters#remove_movie"
  post "movies/:id/add_actor", to: "movies#add_actor"
  post "movies/:id/add_director", to: "movies#add_director"
  post "movies/:id/add_screenwriter", to: "movies#add_screenwriter"
  post "movies/:id/add_studio", to: "movies#add_studio"
  post 'movies/:id/remove_actor', to: 'movies#remove_actor'
  post 'movies/:id/remove_director', to: 'movies#remove_director'
  post 'movies/:id/remove_screenwriter', to: 'movies#remove_screenwriter'
  post 'movies/:id/remove_studio', to: 'movies#remove_studio'
  post 'movies/new', to: 'movies#create'
  post 'movies/edit', to: 'movies#edit'
  post 'actors/new', to: 'actors#create'
  post 'screenwriters/new', to: 'screenwriters#create'
  post 'studios/new', to: 'studios#create'
  post 'directors/new', to: 'directors#create'
  resources :movies
  resources :actors
  resources :screenwriters
  resources :studios
  resources :directors
  root 'welcome#index'

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
