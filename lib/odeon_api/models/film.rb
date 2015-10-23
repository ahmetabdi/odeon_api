module OdeonApi
  class Film < Resource

    def self.all
      build_collection(
        OdeonApi::Requester.get('https://api.odeon.co.uk/android-2.1/api/app-init')["data"]["films"],
        FilmRepresenter
      )
    end

    def self.find(id)
    end

    def self.find_by_name(name)
    end
  end
end
