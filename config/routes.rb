Rails.application.routes.draw do
  resources :articles

  root 'pages#home'

  #navigate to the about page from the pages folder
  get 'about', to:'pages#about'
end
