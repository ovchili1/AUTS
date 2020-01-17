Rails.application.routes.draw do
  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  delete 'signin', controller: :signin, action: :destroy
  resources :themas
  resources :users

  namespace :admin do
    resources :questions, except: [:create]
    resources :tests, except: [:create]
  end

  namespace :teacher do
    resources :questions
    resources :tests
  end

  namespace :student do
    
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
