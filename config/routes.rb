WildlifeTracker::Application.routes.draw do
  match('/', {:via => :get, :to => 'animals#main'})
  match('animals', {:via => :get, :to => 'animals#index'})
  match('animals', {:via => :post, :to => 'animals#create'})
  match('animals/new', {:via => :get, :to => 'animals#new'})
  match('animals/:id', {:via => :get, :to => 'animals#show'})
  match('animals/:id', {:via => :delete, :to => 'animals#destroy'})
end
