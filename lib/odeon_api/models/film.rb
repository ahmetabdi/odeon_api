module OdeonApi
  class Film < Resource

    def self.all
      build_collection(
        OdeonApi::Requester.get('app-init')["data"]["films"],
        MultiFilmRepresenter
      )
    end

    def self.find(id)
      build_single_resource(
        OdeonApi::Requester.get('film-details', m: id)["data"],
        FilmRepresenter
      )
    end

    def self.times(cinema_id, film_id)
      # 'film-times', { s: cinema_id, m: film_id }
      # 102
      # 15866
    end

    def self.find_by_name(name)
    end
  end
end
