Rails.application.routes.draw do
  devise_for :users

  # единственный ресурс
  resource :search, only: [:new, :show, :edit, :create]

  resources :railway_stations do
    patch :update_position, on: :member
  end

  # опция shallow: true указывет, что родитель нужен только в index, create, new 
  resources :trains do
    resources :carriages, shallow: true
  end
  resources :routes

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end