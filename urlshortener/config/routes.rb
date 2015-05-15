Rails.application.routes.draw do
  get '/' => 'shorteners#home'
  get '/most_visited_pages' => 'shorteners#most_visited_pages'
  get '/all_urls_list' => 'shorteners#all_urls_list'
  #redirigir a http://ohmyweekpage.com/something cuando visitemos la versión abreviada
  #otra página con una lista de todas las url mostrando fecha de creación y el número de visitas
end
