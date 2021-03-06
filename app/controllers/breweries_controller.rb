class BreweriesController < ApplicationController

  def get_page
    @breweries = Brewery.paginate(page: params[:page], per_page: 20)
    render json: @breweries
  end

  def get_state
    @breweries = Brewery.where(:state => params[:state]).paginate(:page => params[:page], per_page: 20)
    # byebug
    render json: @breweries
  end

  def find_brewery
    @breweries = Brewery.all.select do |brewery|
      brewery.latitude.to_f <= params[:currentLatitude].to_f + 1 && brewery.latitude.to_f >= params[:currentLatitude].to_f - 1 && brewery.longitude.to_f <= params[:currentLongitude].to_f + 1 && brewery.longitude.to_f >= params[:currentLongitude].to_f - 1
    end
    render json: @breweries
    # byebug
  end

  # def get_location

  # end

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
      # @breweries = Brewery.all.sort{ |a, b| b.likes <=> a.likes }
      @breweries = Brewery.reorder("likes DESC").page(params[:page]).per_page(20)
      render json: @breweries
  end


  private
  def brewery_params
    params.require(:brewery).permit(:name, :street, :city, :state, :postal_code, :website_url, :phone)
  end
  
end
