require 'representable/json'

module FilmTimeRepresenter
  include Representable::JSON

  property :date, as: :date

  collection :types, as: :attributes, class: OdeonApi::FilmType do
    property :name, as: :attribute
    collection :showtimes, parse_filter: lambda { |fragment, doc, *args| fragment.flatten }
  end
end
