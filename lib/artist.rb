class Artist

    attr_accessor :name, :songs 

    @@song_count = 0

    def initialize(name)
        @name = name 
        @songs = []
    end

    def add_song(song)
        @songs<< song 
        song.artist = self
    end

    def songs
        @songs
        Song.all.select {|song| song.artist == self}

    end
    
    def add_song_by_name(name)
        songs = Song.new(name)
        songs.artist = self
    end

    def self.song_count
        Song.all.count
    end
end
