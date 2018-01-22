class Api::V1::OrdersController < Api::V1::BaseController
    def index
        @orders = Order.includes(:agency, products: :image)
        respond_with @orders
    end
end
