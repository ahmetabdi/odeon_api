module OdeonApi
  class Performance < Resource

    def self.performance_attributes
      build_collection(
        OdeonApi::Requester.get("3.0/api/performance-attributes"),
        PerformanceAttributeRepresenter
      )
    end

    def self.times(film_id, cinema_id)
      build_collection(
        OdeonApi::Requester.get('3.0/api/film-times/', s: cinema_id, m: film_id),
        FilmPerformanceRepresenter
      )
    end
  end
end
