Rails.application.routes.draw do
  resources :users do 
    collection do
      get :search_users
    end
  end

  get 'login/login'
  get 'posts/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
