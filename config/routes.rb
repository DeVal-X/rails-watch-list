Rails.application.routes.draw do
  root to: 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
