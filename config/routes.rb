Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get syntax: '<route>' => '<controller>#<method>'
  root 'articles#index'

  get '/articles', to: 'articles#index'
  get '/articles/:id', to: 'articles#show', as: 'articles_show'
  get '/articles/new' => 'articles#new'
  post '/articles' => 'articles#create', as: 'article_create'
  
end
