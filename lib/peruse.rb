require 'peruse/version'

module Peruse
# Instantiates a Config instance once and returns it
  def self.config
    @config ||= Config.new
  end

# Allows the configuration of some Plex-internal settings. It yields a Config
# instance so a block can be used:
#
#    Plex.configure do |config|
#      config.username = "username-string"
#      config.password = "password-string"
#    end
  def self.configure
    yield(config)
  end
end

require 'nokogiri'
require 'peruse/config'
require 'peruse/friend'
require 'peruse/library'
require 'peruse/server'
require 'peruse/web'
require 'rest-client'
