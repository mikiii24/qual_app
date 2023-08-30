Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  get '/search_genre', to: 'questions#search_genre'
  resources :questions do
    resources :answers, only: :create
  end
end
