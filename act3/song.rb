class Song

    def initialize(title, artist, year)
        @title = title
        @artist = artist
        @year = year
    end

    def info()
        puts "The song titled \"#{@title}\" was composed by \"#{@artist}\" and released in the year \"#{@year}\""
    end

end

rick_roll = Song.new("Never Gonna Give You Up", "Rick Astley", "1987")
rick_roll.info()