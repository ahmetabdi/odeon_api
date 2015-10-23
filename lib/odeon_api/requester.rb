require 'rest_client'

module OdeonApi
  class Requester
    class << self
      def get(action, params = {})
        url = url_for(action, params)
        perform_request do
          parse_response(RestClient.get(url, headers))
        end
      end

      private

      def url_for(action, params = {})
        base_url = "https://api.odeon.co.uk/android-2.1/api/"
        url = URI.join(base_url, action)
        url.query = URI.encode_www_form(params) if params
        url.to_s
      end

      def perform_request(&block)
        begin
          block.call
        rescue RestClient::Exception => e
          puts e.message
        end
      end

      def headers
        {}.tap do |headers|
          headers['Accept'] = 'application/json'
          headers['Content-Type'] = 'application/json'
        end
      end

      def parse_response(response_body)
        begin
          JSON.parse(response_body)
        rescue JSON::ParserError => e
          puts e.message
        end
      end
    end
  end
end
