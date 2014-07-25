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









#  Prefix Verb   URI Pattern                              Controller#Action
#     user_posts GET    /users/:user_id/posts(.:format)          posts#index
#                POST   /users/:user_id/posts(.:format)          posts#create
#  new_user_post GET    /users/:user_id/posts/new(.:format)      posts#new
# edit_user_post GET    /users/:user_id/posts/:id/edit(.:format) posts#edit
#      user_post GET    /users/:user_id/posts/:id(.:format)      posts#show
#                PATCH  /users/:user_id/posts/:id(.:format)      posts#update
#                PUT    /users/:user_id/posts/:id(.:format)      posts#update
#                DELETE /users/:user_id/posts/:id(.:format)      posts#destroy
#          users GET    /users(.:format)                         users#index
#                POST   /users(.:format)                         users#create
#       new_user GET    /users/new(.:format)                     users#new
#      edit_user GET    /users/:id/edit(.:format)                users#edit
#           user GET    /users/:id(.:format)                     users#show
#                PATCH  /users/:id(.:format)                     users#update
#                PUT    /users/:id(.:format)                     users#update
#                DELETE /users/:id(.:format)                     users#destroy
#                GET    /                                        home#index
#           home GET    /home(.:format)                          home#index
#          index GET    /index(.:format)                         home#index
#           join GET    /join(.:format)                          home#join
#        contact GET    /contact(.:format)                       home#contact
#      contactus GET    /contact/:id(.:format)                   home#contact
#        success GET    /success(.:format)                       user#contact
#          error GET    /error(.:format)                         user#contact
#                GET    /join(.:format)                          join#users





