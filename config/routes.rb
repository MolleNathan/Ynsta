Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "posts#people"

  resources :posts

  get '/upload', to: 'posts#new'

  get '/people', to: 'posts#people'
  get '/food', to: 'posts#food'
  get '/travel', to: 'posts#travel'

  get '/user/post', to: 'posts#user'

end
