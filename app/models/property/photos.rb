class Property
  module Photos
    extend ActiveSupport::Concern

    included do
      embeds_one :gallery, class_name: 'Property::Gallery', inverse_of: :property

      after_initialize do
        self.gallery = Property::Gallery.new unless self.gallery
      end
    end
  end
end