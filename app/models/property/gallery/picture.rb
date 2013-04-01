class Property::Gallery
  class Picture
    include Mongoid::Document

    # Use Picture uploader
    embedded_in :gallery, class_name: 'Property::Gallery', inverse_of: :pictures

    field :name, type: String, default: ''
  end
end