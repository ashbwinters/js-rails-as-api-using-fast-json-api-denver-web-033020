class SightingsController < ApplicationController
  def index
    sightings = Sighting.all
    render json: SighitngSerializer.new(sightings)
    
  def show
    sighting = Sighting.find_by(id: params[:id])
    options = {include: [:bird, :location]
  }
    render json: SighitngSerializer.new(sighting, options)
  end
end
