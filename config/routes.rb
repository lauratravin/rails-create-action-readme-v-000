Rails.application.routes.draw do
  # resources :posts
  resources :posts, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/posts/:id', to: 'post#show', as: 'post'

end
