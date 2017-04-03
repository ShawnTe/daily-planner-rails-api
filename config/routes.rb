Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :containers
  resources :todos do
    member do
      patch :complete
    end
  end

  resources :users
  resources :brainjuices
end
