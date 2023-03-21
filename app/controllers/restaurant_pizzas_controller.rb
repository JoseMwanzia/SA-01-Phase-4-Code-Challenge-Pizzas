class RestaurantPizzasController < ApplicationController
    # POST /restaurant_pizzas
    def create
        # Create a pizza 
        pizza = Pizza.create(pizzas_params)
        # Render the pizzas obj to a json obj
        render json: pizza, status: :created
    end

    private 

    def pizzas_params
        params.permit(:name, :ingredients)
    end
end
