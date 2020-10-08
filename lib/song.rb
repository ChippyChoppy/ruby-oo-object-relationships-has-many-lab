class Song
    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        all_songs
    end

    def all_songs
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if artist
            self.artist.name
        else
            nil
        end
    end

end
