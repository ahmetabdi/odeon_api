module OdeonApi
  class Cinema < Resource

    def self.all
      build_collection(
        OdeonApi::Requester.get('api/all-cinemas')["data"]["sites"].map {|x| x[1]},
        CinemaRepresenter
      )
    end

    def self.booking(booking_id, cinema_id, email, password)
      # build_collection(
        OdeonApi::Requester.get('booking_standard/booking-init', p: booking_id, s: cinema_id, 'customerEmail': email, 'customerPassword': password)#,
        # FilmTimeRepresenter
      # )
    end
  end
end
