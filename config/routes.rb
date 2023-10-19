Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create, :index]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
