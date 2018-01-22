class Api::V1::ProductsController < Api::V1::BaseController
    def update
        product = Product.find_by(
            id: params[:id]
        ).update_attribute(
            'status', params[:product][:status]
        )
        # <Response content-type: application/json, status: 201 >
        render json: product, status: :ok
    end
end
