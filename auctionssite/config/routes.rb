Rails.application.routes.draw do
  get '/' => 'items#home'
  resources :users do 
    resources :items
  end
end 