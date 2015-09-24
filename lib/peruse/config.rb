module Peruse
  class Config
    attr_accessor :auth_token, :username, :password

    def initialize
      @username = nil
      @password = nil
    end

  end
end