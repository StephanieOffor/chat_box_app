Rails.application.routes.draw do
  root to: 'sessions#new'
  #routes for managing user login/logout sessios
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'
  resources :users
  get 'chatroom', to: 'chatroom#index'
  post 'message', to: 'messages#create'
  #resources :messages, only: [:new, :create, :edit, :update, :destroy]

  mount ActionCable.server, at: '/cable'
end
