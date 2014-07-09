require 'webrick'

module OneTimeDownload
  ##
  # Server for quick file serving
  class Server
    attr_reader :file

    def initialize(file)
      @file = File.new file
      @daemon = WEBrick::HTTPServer.new Port: 8000
      @daemon.mount_proc('/') do |_, res|
        res.body = 'Hello, world!'
      end
    end

    def serve!
      @daemon.start
    end
  end
end
