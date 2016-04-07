module OdeonApi
  class Film < Resource

    def self.top_films
      build_collection(
        OdeonApi::Requester.get('3.0/api/top-films')["films"],
        MultiFilmRepresenter
      )
    end

    def self.new_films
      build_collection(
        OdeonApi::Requester.get('3.0/api/new-films')["films"],
        MultiFilmRepresenter
      )
    end

    def self.coming_soon_films
      build_collection(
        OdeonApi::Requester.get('3.0/api/coming-soon-films')["films"],
        MultiFilmRepresenter
      )
    end

    def self.recommended_films
      build_collection(
        OdeonApi::Requester.get('3.0/api/recommended-films')["films"],
        MultiFilmRepresenter
      )
    end

    def self.find(id)
      build_single_resource(
        OdeonApi::Requester.get('3.0/api/film-details-with-cinemas', m: id),
        FilmRepresenter
      )
    end

    def self.all
      OdeonApi::Requester.get('3.0/api/all-current-active-films/')["currentFilms"]
    end

    def self.film_attributes
      build_collection(
        OdeonApi::Requester.get("3.0/api/film-attributes/"),
        FilmAttributeRepresenter
      )
    end
  end
end
