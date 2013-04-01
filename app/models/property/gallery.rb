class Property
  class Gallery
    include Mongoid::Document

    embedded_in :property, class_name: 'Property', inverse_of: :gallery

    embeds_many :pictures, class_name: 'Property::Gallery::Picture', inverse_of: :gallery
  end
end