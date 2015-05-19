Rails.application.routes.draw do
   get '/' => 'contacts#home'
   get '/contacts/:id' => 'contacts#show'

   resources :contacts
   	root :to => redirect('/contacts')
	end

=begin 
  get '/' => 'contacts#home'  	
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
 
=end 


