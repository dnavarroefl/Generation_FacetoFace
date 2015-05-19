Rails.application.routes.draw do
	get '/' => 'site#home', as: 'root'
	resources :projects do
		resources :entries
	end
end  

=begin
	get '/contact' => 'site#contact'
	get '/projects' => 'projects#index'
	post '/projects' => 'projects#create'
	get '/projects/new' => 'projects#new'
	get '/projects/:id' => 'projects#show'
	get '/projects/:project_id/entries' => 'entries#index'
	get '/projects/:project_id/entries/new' => 'entries#new'
=end



