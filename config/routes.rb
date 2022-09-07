Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard", as: :dashboard
  get "/about", to: "pages#about", as: :about
  post "/certifications", to: "certifications#create", as: :create_certification
  resources :courses do
    resources :classrooms, only: %i[new create show] do
      member do
        get :mint_nft
        get :minted
      end
      resources :lectures, only: %i[new create show] do
        member do
          get :next
          get :quizz
          post :quizz_submit
        end
      end
    end
    resources :chapters, only: %i[new create edit destroy] do
      resources :lessons, only: %i[new create edit destroy]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
