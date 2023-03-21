class RestaurantsController < ApplicationController
    #  Error message
 rescue_from Active_record::RecordNotFound, with: :render_not_found_response

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

    # DELETE /restaurant/:id
    def destroy
       # Retrieves a single restaurant to be deleted using its id 
        restaurant = Restaurant.find(params[:id])
       # Destroy the retrieved restaurant 
        restaurant.destroy
       # Return an empty response body
        head :no_content
    end

    private

    def render_not_found_response
        render json: {error: "Restaurant not found"}, status: :not_found
    end
end
