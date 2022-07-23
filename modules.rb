module Curious
  def investigate(thing)
    puts "Looks at #{thing}"
  end
end
module Clumsy
  def break(thing)
    puts "Knocks over #{thing}"
  end
end
class Monkey
  include Curious
  include Clumsy
end
bubbles = Monkey.new
bubbles.investigate("vase")
bubbles.break("vase")
# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
puts "Ruby will be looking at this list to look for instance method for the Monkey class:"
puts "=>#{Monkey.ancestors}"

=begin 
Let's make a media sharing app applying Modules
Three types of media are required to be supported
on our platform: Video, Music, Photo, all of which
has to be able to store comments. Video and music 
can be played as a clip. Video needs to store resolution
data, and Music needs to store beats-per-minute data
=end
module AcceptComments
  def comments
    @comments ||= []
  end
  def add_comments(comment)
    comments << comment
  end
end
class Clip
  def play
    puts "Playing #{object_id}..."
  end
end
class Music < Clip
  include AcceptComments
  attr_accessor :bpm, :title, :artist
  def initialize(title, artist)
    @title = title
    @artist = artist
  end
end
class Video < Clip
  include AcceptComments
  attr_accessor :resolution
end
class Photo
  include AcceptComments
  attr_accessor :format
  def initialize
    @format = "JPEG"
  end
end
pressure = Music.new("Pressure", "Billy Joel")
pressure.add_comments("This song great")
upload123 = Music.new("Fascination", "The Cure")
upload123.add_comments("Goated song, fr fr")
