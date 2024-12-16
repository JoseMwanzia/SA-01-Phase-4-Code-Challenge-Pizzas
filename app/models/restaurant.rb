class Restaurant < ApplicationRecord
    has_many :pizzas, through: :restaurant_pizzas, dependent: :destroy
end
