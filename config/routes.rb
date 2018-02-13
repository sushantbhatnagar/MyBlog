Rails.application.routes.draw do

  get 'pages/home'

	# get 'pages/home', to: 'pages#home'
	root 'pages#home'
	get 'about', to: 'pages#about'
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	# This will give new, edit , patch and get article path
  	resources :articles

  	



end
