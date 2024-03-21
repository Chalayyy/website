Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home';
  get 'welcome', to: 'pages#home';
  get 'about', to: 'pages#about';

  resources :pokemon, param: :name
  resources :types, param: :name
end

