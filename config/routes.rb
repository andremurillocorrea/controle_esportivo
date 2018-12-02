Rails.application.routes.draw do
  resources :subscriptions
  resources :events
  resources :performances
  resources :finances
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
  resources :users
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
