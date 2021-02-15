class SessionsController < ApplicationController

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

end
