require 'representable/json'

module PerformanceAttributeRepresenter
  include Representable::JSON

  property :id, as: :id
  property :name, as: :name
end
