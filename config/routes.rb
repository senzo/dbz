Dbz::Application.routes.draw do
  # ca permet de voir les pages des differents user? 
  resources :users



  root :to => 'pages#home'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  match '/signup',  :to => 'users#new'  


end
