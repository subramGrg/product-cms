class OrderSerializer < ActiveModel::Serializer
    attributes :order_number, :agency

    has_many :products
end
