Rails.application.routes.draw do

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	get 'pages/home'
	
	# get 'pages/home', to: 'pages#home'
	root 'pages#home'
	get 'about', to: 'pages#about'
  	

  	# This will give new, edit , patch and get article path. To check, rails routes is the command
  	resources :articles





end
