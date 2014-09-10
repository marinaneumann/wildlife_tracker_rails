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
      flash[:notice] = "Animal Created"
      redirect_to("/animals/#{@animal.id}")
    else
      render('animals/new.html.erb')
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    flash[:notice] = "Animal Destroyed"
    render('animals/destroy.html.erb')
  end

end
