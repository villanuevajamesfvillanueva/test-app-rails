Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get syntax: '<route>' => '<controller>#<method>'
  root 'articles#index'

  get '/articles', to: 'articles#index', as: 'articles_index'
  get '/articles/new', to: 'articles#new', as: 'articles_new'
  get '/articles/:id/edit', to: 'articles#edit', as: 'articles_edit'
  put '/articles/:id', to: 'articles#update', as: 'articles_update'
  get '/articles/:id', to: 'articles#show', as: 'articles_show'
  post '/articles' => 'articles#create', as: 'article_create'
  

  
end
