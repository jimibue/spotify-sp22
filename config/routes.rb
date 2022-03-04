Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # NOT NAMESPACE TO API
  # get            'x',                  to:"api/artists#method1"
  # get            'api/y',               to:"api/artists#y"
 
  # prepend routes with api
  namespace :api do
       # from client                    #tells you where to go in rails app
    #http verb       path                   controller#method
     get           'artists',                to:"artists#index" # all artist
     get           'artists/:id',            to:"artists#show" # one artist
     post          'artists',                to:"artists#create" # create artist
     put           'artists/:id',            to:"artists#update"
     delete        'artists/:id',            to:"artists#destroy"

     
     get 'artists/:artist_id/songs',        to:"songs#index"
     post 'artists/:artist_id/songs',        to:"songs#create"
     get 'artists/:artist_id/songs/:id',        to:"songs#show"
     delete 'artists/:artist_id/songs/:id',        to:"songs#destroy"
     put 'artists/:artist_id/songs/:id',        to:"songs#update"

     # custom route
     get 'all_songs', to:'songs#all_songs'

     get 'authors', to:'authors#index'
     post 'authors', to:'authors#create'
     get 'authors/:id', to:'authors#show'
     delete 'authors/:id', to:'authors#destroy'
     put 'authors/:id', to:'authors#update'

     get 'things', to:'things#index'
     post 'things', to:'things#create'
     get 'things/:id', to:'things#show'
     delete 'things/:id', to:'things#destroy'
     put 'things/:id', to:'things#update'
     
  end
end

# MENU HTTP - FOLLOW CONVENTIONAL CRUD
# get localhost:30001/api/artists

#http verbs
# get => get things/thing (index method)
# post => creates thing (create method)
# delete => destroys thing (destroy method)
# put  =>  updates thins (update method)

# author name:string age:integer

# # api stuff g
# axios.get('api/authors')

# # React Router sTuff navigation UI...
# <Link to='/authors'>
# <Route path='/authors'