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
        res.body = serve!
      end
    end

    def start
      @daemon.start
    end

    def serve!
      @file.data
    end
  end
end
