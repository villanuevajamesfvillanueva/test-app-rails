Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get syntax: '<route>' => '<controller>#<method>'
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new'
  post '/articles' => 'articles#create' as: 'article_create'
  
end
