require 'representable/json'

module CinemaRepresenter
  include Representable::JSON

  property :id, as: :siteId
  property :name, as: :siteName
  property :address_1, as: :siteAddress1
  property :address_2, as: :siteAddress2
  property :address_3, as: :siteAddress3
  property :address_4, as: :siteAddress4
  property :postcode, as: :sitePostcode
  property :telephone, as: :siteTelephone
  property :longitude, as: :siteLongitude
  property :latitude, as: :siteLatitude
end
