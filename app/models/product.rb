class Product < ApplicationRecord
    belongs_to :order
    has_one :image, as: :imageable
end
