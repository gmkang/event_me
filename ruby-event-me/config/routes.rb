Rails.application.routes.draw do
  get 'messages/reply'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	root "friends#index"

 	resources :friends

 	resources :inspos, only: [:index, :create]
 	get "/inspos/search", to: "inspos#search", as: :search_inspos
 	post "/inspos/search", to: "inspos#results"

 	get "/signup", to: "user#new", as: :signup
  post "/users", to: "user#create" 
  get "/users/:id", to: "user#show", as: :user


  get "/login", to: "sessions#new", as: :login
  post "/login", to: "sessions#create" 
  delete "/logout", to: "sessions#destroy", as: :logout

  resource :messages do
  collection do
    post 'reply'
  	end
	end

end
