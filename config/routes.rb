Rails.application.routes.draw do
  get 'users/show'
  get 'static_pages/home'
  root 'static_pages#home'
  resources :books
  devise_for :users
    devise_scope :user do  
      get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
