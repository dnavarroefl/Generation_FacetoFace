Rails.application.routes.draw do
  get '/' => 'contacts#home', as: 'root' 
  resources :contacts 
	end
end 