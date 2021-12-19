class SessionsController < ApplicationController
	
	before_action :logged_in_redirect, only: [:new, :create]
	# This controlls user login sessions
	#Check if user is already loged in and redirect to chat room,
	# or if not logged in, then redirect to new user page

	def new
		
	end

	def create
		user = User.find_by(username: params[:session][:username].downcase)
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			flash[:notice] = "Logged in successfully"
			redirect_to chatroom_path
		else
			flash.now[:alert] = "The login details you entered did not match"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "Successfully logged out"
		redirect_to root_path
	end

	private

	def logged_in_redirect
		if logged_in?
			flash[:alert] = "You are already logged in"
			redirect_to chatroom_path
		end 
	end

end
