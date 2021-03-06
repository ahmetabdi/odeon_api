require 'rest_client'

module OdeonApi
  class Requester
    class << self
      def get(action, params = {})
        url = url_for(action, params)
        puts url
        perform_request do
          parse_plist(
            RestClient.get(url, headers)
          )
        end
      end

      private

      def url_for(action, params = {})
        base_url = "https://api.odeon.co.uk/"
        url = URI.join(base_url, action)
        url.query = URI.encode_www_form(params) unless params.empty?
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

      def parse_plist(body)
        plist = CFPropertyList::List.new(data: body)
        CFPropertyList.native_types(plist.value).fetch('data', {})
      end

      def parse_json(body)
        begin
          JSON.parse(body)
        rescue JSON::ParserError => e
          puts e.message
        end
      end
    end
  end
end
