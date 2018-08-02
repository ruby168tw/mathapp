Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/math', :to => 'mathematics#plus'
post '/math', :to => 'mathematics#minus'
put '/math', :to => 'mathematics#multiply'
delete '/math', :to => 'mathematics#divide'
end
