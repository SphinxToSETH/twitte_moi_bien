
Rails.application.routes.draw do
  root to: 'home#index'
  post'/' , to: 'home#create'
  resources 'home'
 end