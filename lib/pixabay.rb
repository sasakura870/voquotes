class Pixabay
  class << self
    def get_pictures(query:)
      uri = parse_api_url query: query
      result = get_request uri: uri
      result
    end

    private

    def get_request(uri:)
      https = Net::HTTP.new uri.host, uri.port
      https.use_ssl = true
      response = https.start do |connection|
        connection.open_timeout = 5
        connection.read_timeout = 10
        connection.get uri
      end
      p uri

      begin
        case response
        when Net::HTTPSuccess
          result = JSON.parse response.body
        when Net::HTTPRedirection
          result = response
          # redirect_uri = URI.parse response['location']
          # result = get_request uri: redirect_uri
        else
          result = { message: "HTTP ERROR: code=#{response.code} message=#{response.message}" }
        end
      rescue IOError => e
        result = e.message
      rescue TimeoutError => e
        result = e.message
      rescue JSON::ParserError => e
        result = e.message
      end
      result
    end

    def parse_api_url(query:)
      key = Rails.application.credentials.pixabay[:api_key]
      api_url = 'https://pixabay.com/api/'
      params = URI.encode_www_form(
        key: key,
        q: query
      )
      URI.parse "#{api_url}?#{params}"
    end
  end
end
