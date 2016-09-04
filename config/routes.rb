Rails.application.routes.draw do
  resources :challenges
  root to: 'pages#home'
  get '/learn-now' => "pages#learn"
  get '/learn' => "users#edit"
  get '/challenge' => "pages#challenges"
  # devise_for :users
  devise_for :users, controllers: {registrations: 'registrations'}
  resources :users do
  	resources :apps
  end 	

end
