class PrivateController < ApplicationController

 def index
 	if session [:user_id].nil?
 		redirect_to 'login' if session [:user_id].nil?
 	end


 	@user = User.find(session[:user_id])
 	if @user.nil?
 		redirect_to '/login'
 	end
 end
end
