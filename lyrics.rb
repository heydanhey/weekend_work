# Create a Song class with a readable title and lyrics attribute (an array of strings)
# and a method to display the lyrics.
class Song
  
  attr_accessor :title
  
  def initialize(input)
    @title = input[:title]
    @lyrics = input[:lyrics]
  end
  
  def display_lyrics
    @lyrics.each do |lyric|
      puts lyric
    end
  end
  
end

# Driver code
song = Song.new(
  title: "Jump Around",
  lyrics: [
    "Jump around!",
    "Jump around!",
    "Jump around!",
    "Jump up, jump up, and get down!",
    "Jump!",
    "Jump!",
    "Jump!",
    "Jump!"
  ]
)
p song.title # should be "Jump Around"
song.display_lyrics 
# should display:
# Jump around!
# Jump around!
# Jump around!
# Jump up, jump up, and get down!
# Jump!
# Jump!
# Jump!
# Jump!