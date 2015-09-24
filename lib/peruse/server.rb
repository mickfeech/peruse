module Peruse
  # @author mickfeech
  class Server
    attr_reader :host, :port

    def initialize(host, port)
      @host = host
      @port = port
    end

    # Returns the URL endpoint to the plex media server
    def url
      "http://#{host}:#{port}"
    end
  end
end