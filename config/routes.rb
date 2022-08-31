Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard", as: :dashboard
  resources :courses do
    resources :classrooms, only: :show
    resources :chapters, only: %i[new create edit destroy show] do
      resources :lessons, only: %i[new create edit destroy] do
        resources :lectures, only: %i[new create]
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
