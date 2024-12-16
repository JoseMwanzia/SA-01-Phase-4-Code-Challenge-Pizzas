class PizzasController < ApplicationController
 rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    # GET /pizzas
    def index
       # Get all the pizzas from tha Pizza instance 
        pizzas = Pizza.all
       # Render the pizzas obj to a json obj
        render json: pizzas, status: :ok
    end

    # POST /pizza
    def create
        pizza = Pizza.create(pizzas_params)
        render json: pizza, status: :created
    end

    private 

    def pizzas_params
        params.permit(:name, :ingredients)
    end

    def render_not_found_response
        render json: {error: "Pizza not found"}, status: :not_found
    end
end
