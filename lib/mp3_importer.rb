class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        @files ||= Dir.glob("#{path}/*.mp3").collect do |j|
            j.gsub("#{path}/", "")
        end
    end

    def import 
        files.each do |j|
            Song.new_by_filename(j)
        end
    end
    

end