class Property
  class Gallery
    include Mongoid::Document

    embedded_in :property, type: 'Property', inverse_of: :gallery
    embeds_many :pictures, type: 'Property::Gallery::Picture', inverse_of: :gallery
  end
end