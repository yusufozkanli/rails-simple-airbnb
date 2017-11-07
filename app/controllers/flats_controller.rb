class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path
  end

  def show
    @flat = Flat.find(params[:id])
    @flat_url = "https://maps.googleapis.com/maps/api/staticmap?center=#{@flat.address}&zoom=12&size=1000x500"
  end

  private

   def flat_params
    params.require(:flat).permit(:name, :address)
  end

end
