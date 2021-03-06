Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: :registrations }
  resources :users
  resources :posts, only: %i[new create index]
  root to: 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
