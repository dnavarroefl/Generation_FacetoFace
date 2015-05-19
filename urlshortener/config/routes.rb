Rails.application.routes.draw do
	resources :shorteners
	root :to => redirect('/shorteners')
=begin 
	get '/' => 'shorteners#index'
  	get '/:id' => 'shorteners#redirect_url'  
=end
end

