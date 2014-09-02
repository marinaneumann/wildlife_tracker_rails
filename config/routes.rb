WildlifeTracker::Application.routes.draw do
  match('animals', {:via => :get, :to => 'animals#index'})
  match('animals', {:via => :post, :to => 'animals#create'})
  match('animals/new', {:via => :get, :to => 'animals#new'})
  match('animals/:id', {:via => :get, :to => 'animals#show'})
end
