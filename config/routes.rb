Rails.application.routes.draw do
  root to: 'pages#home'
  get 'angular-items', to: 'portfolios#angular'
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  resources :portfolios, except: [:show]  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'


  get 'about', to: 'pages#about' # same as {:to => 'pages#about'}
  get 'contact', to: 'pages#contact'
  

end
