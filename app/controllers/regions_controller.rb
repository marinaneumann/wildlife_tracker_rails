class RegionsController < ApplicationController
  def index
    @regions = Region.all
    render('regions/index.html.erb')
  end

  def show
    @region = Region.find(params[:id])
    render('regions/show.html.erb')
  end

  def new
    @region = Region.new
    render('regions/new.html.erb')
  end

  def create
    @region = Region.new(params[:region])

    if @region.save
      flash[:notice] = 'Region Created'
      redirect_to("/regions/#{@region.id}")
    else
      render('regions/new.html.erb')
    end
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    flash[:notice] = "Region Destroyed"
    render('regions/destroy.html.erb')
  end

end
