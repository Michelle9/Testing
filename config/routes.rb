SampleApp::Application.routes.draw do
   #resources :users
   resources :users do
    member do
      get :following, :followers
    end
  end
   resources :sessions, only: [:new, :create, :destroy]
   resources :microposts, only: [:create, :destroy]
   resources :relationships, only: [:create, :destroy]

   #get "users/new"

  root to: 'static_pages#home'
  #twtrol_url to : 'static_pages#twtrol'
  #twtrol_url  => 'http://localhost:3000/twtrol'

  match '/signup/', to: 'users#new' 
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  match '/help', to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/home', to: 'static_pages#home'
  match '/mission', to: 'static_pages#mission'
  match '/guide', to: 'static_pages#guide'
  match '/map', to: 'static_pages#map'
  match '/shops', to: 'static_pages#shops'
  match '/oblivion', to: 'static_pages#oblivion'
  match '/news', to: 'static_pages#news'


end
