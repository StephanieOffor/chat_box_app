Rails.application.routes.draw do
  root to: "sessions#new"
  #routes for managing user login/logout sessios
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'
  get 'chatroom', to: 'chatroom#index'
  resources :users
  resources :messages
end
