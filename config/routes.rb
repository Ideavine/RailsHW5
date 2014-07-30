# The generic format is like so:
# HTTPVERB ‘URL’ => 
# “CONTROLLER#VIEW”


Rails.application.routes.draw do 

	#this is a shortcut (aka RESTful route) to create a list of related routes. for example, resources :events creates the following routes: 

resources :users do 
	resources :posts
end

	get '/' => "home#index"
	get '/home' => "home#index"
	get '/index' => "home#index"
	get '/join' => "home#join"
 	get '/contact' => "home#contact"
 	get '/contact/:id' => "home#contact", as: :contactus
 	get '/success' => "users#contact", as: :success
 	get '/error' => "users#contact", as: :error
 	get '/join' => "users#new"
 	get '/search' => "users#users"
 	get '/login' => "sessions#new"
 	get '/in' => "private#index"

resources :sessions, only: ['create','destroy']
end
