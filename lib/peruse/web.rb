module Peruse
  # @author mickfeech
  # = Web
  # The Web class provides the interface with plex.tv
  class Web
    attr_reader :username, :password

    # @param [username] username your plex.tv username
    # @param [passowrd] password your plex.tv password
    def initialize(username, password)
      @username = username
      @password = password
    end

  end
end