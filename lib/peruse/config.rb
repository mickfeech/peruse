module Peruse
  class Config
    attr_accessor :auth_token, :username, :password

    def initialize(options={})
      @username  ||= options[:username]
      @password  ||= options[:password]
      @auth_token ||= nil
    end

    private
    def get_token

    end
  end
end