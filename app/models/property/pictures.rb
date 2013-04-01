class Property
  module Pictures
    extend ActiveSupport::Concern

    included do
      embeds_one :gallery, type: 'Property::Gallery', inverse_of: :property
    end
  end
end