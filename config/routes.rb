Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # NOT NAMESPACE TO API
  # get            'x',                  to:"api/artists#method1"
  # get            'api/y',               to:"api/artists#y"
 
  # prepend routes with api
  namespace :api do
       # from client                    #tells you where to go in rails app
    #http verb       path                   controller#method
     get           'artists',                to:"artists#index"
     get           'artists/:id',            to:"artists#show"
     post          'artists',                to:"artists#create"
     put           'artists/:id',            to:"artists#update"
     delete        'artists/:id',            to:"artists#destroy"
  end
end

# MENU HTTP - FOLLOW CONVENTIONAL CRUD
# get localhost:30001/api/artists

#http verbs
# get => get things/thing (index method)
# post => creates thing (create method)
# delete => destroys thing (destroy method)
# put  =>  updates thins (update method)

