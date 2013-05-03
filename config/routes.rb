Bucketlist::Application.routes.draw do

  resources :comments, :only => :create
  resources :todo_items, :only => [:create, :index, :show] do
    member do 
	  post :like
	end
end
  resources :destinations, :only =>[:create, :index, :show] 

	
  root :to => 'destinations#index'
end

