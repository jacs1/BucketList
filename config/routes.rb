Bucketlist::Application.routes.draw do

  resources :comments, :only => :create
  resources :todo_items, :only => :show

  root :to => 'todo_items#index'

end
