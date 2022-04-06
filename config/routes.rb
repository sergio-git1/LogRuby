Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "articles#index"
  
  #get 'welcome/index'
  resources :articles
=begin
  get "/articles" index
  post "/articles" create
  delete "/articles/:id" destroy
  get "/articles/:id" show
  get "/articles/new" new
  get "/articles/:id/edit" edit
  patch "/articles/:id" update
  put "/articles/:id" update
=end
  root "welcome#index"
  #get "special", to: "welcome#index"
end
