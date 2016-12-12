Rails.application.routes.draw do
  get 'searches/show'

  devise_for :users

  resources :tickets, only: [:create, :show]
  # единственный ресурс
  resource :search, only: [:new, :show, :edit, :create]

  namespace :admin do
    resources :railway_stations do
      patch :update_position, on: :member
    end

    # опция shallow: true указывет, что родитель нужен только в index, create, new
    resources :trains do
      resources :carriages, shallow: true
    end
    resources :routes
    resources :tickets
  end

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
