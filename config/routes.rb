Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todays
  resources :todos
  resources :users
  resources :brainjuices
end
