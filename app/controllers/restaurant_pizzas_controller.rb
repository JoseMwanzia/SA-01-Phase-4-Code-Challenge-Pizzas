class RestaurantPizzasController < ApplicationController
 rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # POST /restaurant_pizzas
    def create
        # Create a pizza 
        pizza = Pizza.create(pizzas_params)
        # Render the pizzas obj to a json obj
        render json: pizza, status: :created
    end

    private 

    def pizzas_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { invalid.record.message }, status: :unprocessable_entity
    end
end
