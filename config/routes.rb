Bucketlist::Application.routes.draw do

  resources :comments, :only => :create
  resources :todo_items, :only => :show
  resources :destinations, :only =>[:create, :index, :show]

  root :to => 'destinations#index'

end
