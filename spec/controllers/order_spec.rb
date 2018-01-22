require 'rails_helper'

RSpec.describe Api::V1::OrdersController, type: :controller do
    it 'has ok status' do
        get :index
        expect(response).to_have_http_status(:ok)
    end
end
