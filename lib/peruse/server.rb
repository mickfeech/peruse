module Peruse
  # @author mickfeech
  # = Server
  # The server class provides the framework for you to connect to a specified Plex Media Server
  class Server
    attr_reader :host, :port

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