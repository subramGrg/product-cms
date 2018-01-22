class ImageSerializer < ActiveModel::Serializer
    attributes :name

    belongs_to :imageable, polymorphic: true
end
