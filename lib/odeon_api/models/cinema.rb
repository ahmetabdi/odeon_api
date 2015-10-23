module OdeonApi
  class Cinema < Resource

    def self.all
      build_collection(
        OdeonApi::Requester.get('all-cinemas')["data"]["sites"].map {|x| x[1]},
        CinemaRepresenter
      )
    end

    def self.find(id)
    end

    def self.find_by_name(name)
    end

    # https://api.odeon.co.uk/android-2.1/api/get-rewards
  end
end
