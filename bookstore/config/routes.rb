Rails.application.routes.draw do
  get '/' => 'products#home', as: 'root'
  resources :bookstores do 
    resources :products
  end 
end 
