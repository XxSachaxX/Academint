Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard", as: :dashboard
  get "/about", to: "pages#about", as: :about
  resources :courses do
    resources :classrooms, only: %i[new create show] do
      member do
        get :next
      end
    end
    resources :chapters, only: %i[new create edit destroy] do
      resources :lessons, only: %i[new create edit destroy] do
        resources :lectures, only: %i[new create]
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
