module Peruse
  class Config
    attr_accessor :auth_token, :username, :password

    def initialize
      @auth_token = nil
      @username = nil
      @password = nil
    end
  end
end