module Peruse
  class Friend
    attr_accessor :web

    # @param [Web] web object
    def initialize(web)
      @web = web
    end

    # Returns an array of users with email and username
    def all
      xml_doc.xpath('/MediaContainer/User').map {|n| [n['email'],n['username']] }
    end

    # @private
    def auth_token #:nodoc:
      web.auth_token
    end

    # @private
    def password #:nodoc:
      web.password
    end

    # @private
    def url #:nodoc:
      'https://plex.tv/pms/friends/all'
    end

    # @private
    def username #:nodoc:
      web.username
    end

    private
    def xml_doc
      Nokogiri::XML(RestClient::Request.execute(method: :get, url: url, user: username, password: password, headers: {'X-Plex-Client-Identifier' => 'perusev0.9'}))
    end

  end
end