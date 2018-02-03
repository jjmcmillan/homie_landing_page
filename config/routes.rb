Rails.application.routes.draw do
  root to: 'subscribers#new'
  get 'subscribed', to: 'pages#subscribed'
  resources :subscribers
end