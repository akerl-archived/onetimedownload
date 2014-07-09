module OneTimeDownload
  ##
  # File object
  class File
    def initialize(object)
      @raw = object.respond_to?(:read) ? object : File.new(object, 'r+b')
    end

    def serve!
      @raw.read
    end
  end
end
