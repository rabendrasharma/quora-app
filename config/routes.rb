Rails.application.routes.draw do
  get 'questions/new'
  devise_for :users
  root 'home#index'
  resources :users
  resources :topics
  resources :questions
  resources :answers
  get "/upvote" => "upvotes#upvote", as: "upvote"
  get "/downvote" => "downvotes#downvote", as: "downvote"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
