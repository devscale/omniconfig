require "omniconfig/version"

module OmniConfig
  # This is a unique object that represents a value was not set for
  # a given configuration key. Since `nil` may be the desired value to
  # set for an option, this should be the flag to verify if it is truly
  # unset.
  UNSET_VALUE = Object.new

  autoload :Config,    'omniconfig/config'
  autoload :Structure, 'omniconfig/structure'

  module Loader
    autoload :Hash,    'omniconfig/loader/hash'
  end

  module Type
    autoload :String, 'omniconfig/type/string'
  end

  # This is a shorcut for initializing a {Config} object. This is provided
  # because typing `OmniConfig::Config` is a bit redundant. The namespacing
  # was done this way since it leads to a better overall organized internal
  # structure, and this API is to provider the cleaner API to decisions for
  # internal strucutre.
  #
  # @return [Config]
  def self.new(*args)
    Config.new(*args)
  end
end
