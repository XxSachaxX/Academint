Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard", as: :dashboard
  resources :classrooms, only: %i[new create]
  resources :courses do
    resources :chapters, only: %i[new create edit destroy] do
      resources :lessons, only: %i[new create edit destroy] do
        get "/classrooms/:classroom_id", to: "classrooms#follow_course", as: :follow_course
        resources :lectures, only: %i[new create]
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
