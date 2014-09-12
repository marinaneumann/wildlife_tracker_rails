class SightingsController < ApplicationController
  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def new
    @sighting = Sighting.new
    render('sightings/new.html.erb')
  end

  def create
    @sighting = Sighting.new(params[:sighting])

    if @sighting.save
      flash[:notice]= "Sighting created"
      redirect_to("/sightings/#{@sighting.id}")
    else
      render('sightings/new.html.erb')
    end
  end

  def show
    @sighting = Sighting.find(params[:id])
    render('sightings/show.html.erb')
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    flash[:notice]= "Sighting Destroyed"
    redirect_to('/sightings')
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(params[:sighting])
      redirect_to("/sightings/#{@sighting.id}")
    else
      render('sightings/edit.html.erb')
    end
  end
end
