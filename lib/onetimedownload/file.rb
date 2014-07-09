module OneTimeDownload
  ##
  # File object
  class File
    attr_reader :data

    def initialize(object)
      object = ::File.new(object, 'r+b') unless object.respond_to?(:read)
      @data = object.read
    end
  end
end
