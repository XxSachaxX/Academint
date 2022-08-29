Rails.application.routes.draw do
  get 'lessons/new'
  get 'lessons/edit'
  get 'chapters/new'
  get 'chapters/edit'
  get 'courses/index'
  get 'courses/show'
  get 'courses/new'
  get 'courses/edit'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
