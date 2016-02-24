module OdeonApi
  class Film < Resource

    def self.all
      build_collection(
        OdeonApi::Requester.get('api/app-init')["data"]["films"],
        MultiFilmRepresenter
      )
    end

    def self.find(id)
      build_single_resource(
        OdeonApi::Requester.get('api/film-details', m: id)["data"],
        FilmRepresenter
      )
    end

    def self.times(film_id, cinema_id)
      build_collection(
        OdeonApi::Requester.get('api/film-times', s: cinema_id, m: film_id)["data"],
        FilmTimeRepresenter
      )
    end
  end
end
