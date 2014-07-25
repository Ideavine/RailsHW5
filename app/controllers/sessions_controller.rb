class SessionsController < ApplicationController
 #route for login form
 	def new
 	end
 #processes data from login form
 	def create
		user = User.where(username: params[:username]).first
		# user = User.where(:username => params[:username]).first
		if user && user.password == params[:password]
		  session[:user_id] = user.id 
		  return redirect_to in_path
		end
 	end
 	
 	#route for logging out a user
	def destroy
		 session[:user_id] = nil
		 redirect_to home_path
	end
end