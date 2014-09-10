WildlifeTracker::Application.routes.draw do
  match('/', {:via => :get, :to => 'trackers#index'})
  match('animals', {:via => :get, :to => 'animals#index'})
  match('animals', {:via => :post, :to => 'animals#create'})
  match('animals/new', {:via => :get, :to => 'animals#new'})
  match('animals/:id', {:via => :get, :to => 'animals#show'})
  match('animals/:id', {:via => :delete, :to => 'animals#destroy'})
  match('animals/:id/edit', {:via => :get, :to => 'animals#edit'})
  match('animals/:id', {:via => [:patch, :put], :to => 'animals#update'})

  match('regions', {:via => :get, :to => 'regions#index'})
  match('regions', {:via => :post, :to => 'regions#create'})
  match('regions/new', {:via => :get, :to => 'regions#new'})
  match('regions/:id', {:via => :get, :to => 'regions#show'})
  match('regions/:id', {:via => :delete, :to => 'regions#destroy'})
end
