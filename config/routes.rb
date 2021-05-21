Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get syntax: '<route>' => '<controller>#<method>'
  root 'articles#index'

  get '/articles', to: 'articles#index', as: 'articles_index'

  get '/articles/new', to: 'articles#new', as: 'articles_new'

  get '/articles/:id/edit', to: 'articles#edit', as: 'articles_edit', id: /\d+/
  put '/articles/:id', to: 'articles#update', as: 'articles_update'

  delete '/articles/:id/delete', to: 'articles#destroy', as: 'articles_delete'
  # delete '/articles/:id', to: 'articles#destroy' as: 'articles_delete'

  get '/articles/:id', to: 'articles#show', as: 'articles_show', id: /\d+/

  post '/articles' => 'articles#create', as: 'article_create'
  

  
end
