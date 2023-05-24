class Song
    # First it takes in three arguments: a name, artist and genre
    attr_accessor :name, :artist, :genre

    @@count=0
    @@artists=[]
    @@genres=[]
    # has a class variable, @@count
    #   has a class variable, @@artists, that contains all of the artists of existing songs
    #   has a class variable, @@genres, that contains all of the genres of existing songs

def initialize (song_name,artist,genre)
    @name=song_name
    @artist=artist
    @genre=genre
    @@count +=1
    @@genres <<genre
    @@artists << artist
 
end
#   This is a class method that returns that number of songs created
def self.count
    @@count
end
#   This is a class method that returns a unique array of artists of existing songs
def self.artists
    @@artists.uniq
end
#   This is a class method that returns a unique array of genres of existing songs
def self.genres
    @@genres.uniq
end
#  Below is a class method that returns a hash of genres and the number of songs that have those genres
def self.genre_count
    genre_count={}
    @@genres.each do |genre|
        if genre_count[genre]
            genre_count[genre] +=1
        else
            genre_count[genre] =1
        end
        end
        genre_count
    end
    #Finally is a class method that returns a hash of artists and the number of songs that have those artists
    def self.artist_count
        artist_count={}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] +=1
            else
                artist_count[artist] =1
            end
        end
        artist_count
    end
end