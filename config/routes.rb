Rails.application.routes.draw do
  
  
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :newsvilles
  root to: 'pages#index'
  # root to: 'application#google_news'
  

end
