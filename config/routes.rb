Rails.application.routes.draw do
  root to: 'subscribers#new'
  resources :subscribers
end