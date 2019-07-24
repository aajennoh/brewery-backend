class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.all
    render json: @breweries
  end

  def create
    # byebug
    @brewery = Brewery.find_or_create_by(brewery_params)
    render json: @brewery
  end

  def likes
    @brewery = Brewery.find(params[:id])   
    @brewery.update(likes: @brewery.likes + 1)
    render json: @brewery
  end

  def dislikes
      @brewery = Brewery.find(params[:id])   
      @brewery.update(dislikes: @brewery.dislikes + 1)
      render json: @brewery
  end

  def most_liked
      @breweries = Brewery.all.sort{ |a, b| b.likes <=> a.likes }
      render json: @breweries
  end


  private
  def brewery_params
    params.require(:brewery).permit(:name, :street, :city, :state, :postal_code, :website_url, :phone)
  end
  
end
