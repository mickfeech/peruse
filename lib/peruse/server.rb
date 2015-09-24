module Peruse
  # @author mickfeech
  # = Server
  # The server class provides the framework for you to connect to a specified Plex Media Server
  class Server
    attr_reader :host, :port

    # @param [host] host that hosts the plex media server you wish to connect to
    # @param [port] port that the host listens on for incoming requests for the plex media server
    def initialize(host, port)
      @host = host
      @port = port
    end

    # Returns the URL endpoint to the Plex Media Server
    def url
      "http://#{host}:#{port}"
    end
  end
end