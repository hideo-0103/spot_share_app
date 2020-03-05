class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def new
    @spot = Spot.new
    @spot.spot_images.new
  end

  def create
    @spot = Spot.new(spot_params)
    begin 
      @spot.save!
      redirect_to root_path
    rescue => e
      p e
    end
  end

  private
  
  def spot_params
    params.require(:spot).permit(:name, :address, spot_images_attributes: [:src, :_destroy])
  end

end
