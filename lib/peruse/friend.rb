module Peruse
  class Friend
    attr_accessor :web
    # @param [Web] web object
    def initialize(web)
      @web = web
    end

    def all
      'hi'
    end

    # @private
    def auth_token #:nodoc:
      web.auth_token
    end
  end
end