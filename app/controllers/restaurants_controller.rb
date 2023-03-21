class RestaurantsController < ApplicationController

    # GET /restaurants
    def index 
      # Retrieve all the restaurants
        restaurants = Restaurant.all
      # Render the restaurants objs to json format
        render json: restaurants, status: :ok
    end

    # GET /restarants/:id
    def show
       # Retrieve a single restaurant using its ID
        restaurant = Restaurant.find(params[:id])
       # Render the restaurant's obj to a json format 
        render json: restaurant, status: :ok
    end
end
