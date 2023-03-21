class RestaurantsController < ApplicationController

    # GET /restaurants
    def index 
        restaurants = Restaurant.all
        render json: restaurants, status: :ok
    end
end
