##
# Simple tool for serving a file to a single recipient
module OneTimeDownload
  class << self
    ##
    # Insert a helper .new() method for creating a new Server object

    def new(*args)
      self::Server.new(*args)
    end
  end
end

require 'onetimedownload/file'
require 'onetimedownload/server'
require 'onetimedownload/version'
