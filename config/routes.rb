Rails.application.routes.draw do
  root to: "home#welcome"
  resources :notes
  devise_for :users, controllers: {registrations: 'registrations'}
  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
    get '/signup', to: 'devise/registrations#new'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
