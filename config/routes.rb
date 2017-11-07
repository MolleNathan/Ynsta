Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "posts#index"

  resources :posts

  get '/upload', to: 'posts#new'
  get 'categories/:category_id', to: 'posts#index', as: 'category'
  get 'tags/:tag_id', to: 'posts#index', as: 'tag'
  get 'users/:user_id', to: 'posts#index', as: 'user'

  # get '/people', to: 'posts#people'
  # get '/food', to: 'posts#food'
  # get '/travel', to: 'posts#travel'
  #
  # get '/user/post', to: 'posts#user'

end
