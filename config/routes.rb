Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/create' => 'register#create'
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'register#login'
end
