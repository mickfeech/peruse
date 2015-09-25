require 'json'
module Peruse
  # @author mickfeech
  # = Web
  # The Web class provides the interface with plex.tv
  class Web
    attr_reader :username, :password, :auth_token

    # @param username [string] plex.tv username
    # @param password [string] plex.tv password
    def initialize(username, password)
      @username = username
      @password = password
      plex_tv = JSON.parse(RestClient::Request.execute(method: :post, url: 'https://plex.tv/users/sign_in.json', user: @username, password: @password, headers: {'X-Plex-Client-Identifier' => 'perusev0.9'}))
      @auth_token = plex_tv['user']['authentication_token']
    end

  end
end