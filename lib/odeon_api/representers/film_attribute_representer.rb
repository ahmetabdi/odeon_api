require 'representable/json'

module FilmAttributeRepresenter
  include Representable::JSON

  property :id, as: :id
  property :name, as: :name
end
