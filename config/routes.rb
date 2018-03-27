Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'factorial#hello'
  post "factorial",to: 'factorial#calculate'
  get "factorial",to: 'factorial#hello'
end
