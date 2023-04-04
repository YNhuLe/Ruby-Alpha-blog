Rails.application.routes.draw do


  root 'pages#home'

  #navigate to the about page from the pages folder
  get 'about', to:'pages#about'
  #actions can be done in the routes, for example: resources/new 
  resources :articles
end
