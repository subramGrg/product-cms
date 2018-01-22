class ProductSerializer < ActiveModel::Serializer
    attributes :id, :name, :status, :image
end
