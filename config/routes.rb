Rails.application.routes.draw do
  root to: "home#index"
  #routes for managing user login/logout sessios
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'
  get 'chatroom', to: 'chatroom#index'
end
