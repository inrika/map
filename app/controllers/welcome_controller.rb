class WelcomeController < ApplicationController
  def index
     @locations = Location.all
     logger.info @locations.count
     @point= params[:lat], params[:lng]
     @locations_near = Location.near(@point,4, unit: :km)
     #@locations.each do |location|
#        @location_near<<location
 #    end
  end

end
