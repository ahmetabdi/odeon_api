require 'representable/json'

module FilmPerformanceRepresenter
  include Representable::JSON

  property :attribute, as: :attribute

  collection :days, as: :days, class: OdeonApi::FilmDay do
    property :date, as: :date
    collection :performances, as: :performances, class: OdeonApi::FilmPerformance do
      property :performance_id, as: :performanceId
      property :performance_time, as: :performanceTime
      property :attributes, as: :attributes
      property :film_attributes, as: :filmAttributes
      property :status, as: :status
    end
  end

  # property :date, as: :date

  # collection :types, as: :attributes, class: OdeonApi::FilmType do
  #   property :name, as: :attribute
  #   collection :showtimes, parse_filter: lambda { |fragment, doc, *args| fragment.flatten }
  # end
end
