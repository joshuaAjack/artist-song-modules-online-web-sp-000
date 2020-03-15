require 'pry'

class Artist 
 extend Memorable::ClassMethods
 include Memorable::InstanceMethods
 extend Findable
  include Paramable


 attr_accessor :name
 attr_reader :songs


 @@artists = []

 def initialize
   super
   @songs = []
 end

def self.all
   @@artists
 end
 
 def add_song(song)
   @songs << song
   song.artist = self
songs.each { |song| add_songs(song) }
 end
end

