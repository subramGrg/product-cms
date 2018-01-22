class Order < ApplicationRecord
    belongs_to :agency
    has_many :products
end
