class PizzasController < ApplicationController

    # GET /pizzas
    def index
       # Get all the pizzas from tha Pizza instance 
        pizzas = Pizza.all
       # Render the pizzas obj to a json obj
        render json: pizzas, status: :ok
    end

end
