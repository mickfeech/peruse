module Peruse
  class Server
    attr_reader :host, :port

    def initialize(host, port)
      @host = host
      @port = port
    end

    def url
      "http://#{host}:#{port}"
    end
  end
end