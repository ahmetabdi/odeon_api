require 'representable/json'

module FilmRepresenter
  include Representable::JSON

  property :certificate, as: :certificate
  property :image_url, as: :imageUrl
  property :rateable, as: :isRateable
  property :is_bbf, as: :isBBF # http://www.odeon.co.uk/odeon-terms/bbf-voucher/
  property :plot
  property :customerAdvice, as: :customerAdvice
  property :director, as: :director
  property :casts, as: :casts
  property :running_time, as: :runningTime
  property :language, as: :language
  property :country, as: :country
  property :rating, as: :halfRating
end
