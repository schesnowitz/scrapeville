Rails.application.routes.draw do
  
  
  resources :googles
  root to: 'pages#index'

end
