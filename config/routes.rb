Rails.application.routes.draw do
  resources :users
  resources :posts, only: %i[new create index]
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
