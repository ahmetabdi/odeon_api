require 'representable/json'

module FilmRepresenter
  include Representable::JSON

  property :title, as: :title
  property :id, as: :filmMasterId
  property :rating, as: :halfRating
  property :certificate, as: :certificate
  property :image_url, as: :imageUrl
  property :release_date, as: :releaseDate
  property :genre, as: :genre
  property :trailer_url, as: :trailerUrl
  property :rateable, as: :isRateable
  property :top_five, as: :topFive # Goes up to 12
  property :now_booking, as: :nowBooking # Don't think this is used
  property :coming_soon, as: :comingSoon # Is used 1/0 true false
  property :future_release, as: :futureRelease # Not used?
  property :recommended, as: :recommended # Used
  property :is_bbf, as: :isBBF # http://www.odeon.co.uk/odeon-terms/bbf-voucher/
  property :sites, as: :sites
end
