class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render('animals/index.html.erb')
  end

  def show
    @animal = Animal.find(params[:id])
    render('animals/show.html.erb')
  end

  def new
    @animal = Animal.new
    render('animals/new.html.erb')
  end

  def create
    @animal = Animal.new(:name => params[:name])

    if @animal.save
      render('animals/success.html.erb')
    else
      render('animals/new.html.erb')
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    render('animals/destroy.html.erb')
  end

end
