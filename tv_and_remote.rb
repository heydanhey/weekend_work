# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel
  def initialize
    @power = false
    @volume = 5
    @channel = 11
  end
end

class Remote
  attr_accessor :tv
  def initialize (tv)
    @tv = tv
  end

  def toggle_power
    @tv.power = !tv.power
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(channel)
    @tv.channel = channel
  end
end

#Create TV/Remote
tv = Tv.new
remote = Remote.new(tv)

puts "TESTING TV:"
puts "Is power on?: #{tv.power}"
puts "Volume: #{tv.volume}"
puts "Channel: #{tv.channel}"
puts "---------------"

puts "TESTING TOGGLE POWER:"
remote.toggle_power
puts "Is power on?: #{tv.power}"
puts "Volume: #{tv.volume}"
puts "Channel: #{tv.channel}"
puts "---------------"

puts "TESTING VOLUME INCREMENT (x3):"
remote.increment_volume
remote.increment_volume
remote.increment_volume
puts "Is power on?: #{tv.power}"
puts "Volume: #{tv.volume}"
puts "Channel: #{tv.channel}"
puts "---------------"

puts "TESTING VOLUME DECREMENT (x4):"
remote.decrement_volume
remote.decrement_volume
remote.decrement_volume
remote.decrement_volume
puts "Is power on?: #{tv.power}"
puts "Volume: #{tv.volume}"
puts "Channel: #{tv.channel}"
puts "---------------"

puts "TESTING SET CHANNEL (Change to 32):"
remote.set_channel(32)
puts "Is power on?: #{tv.power}"
puts "Volume: #{tv.volume}"
puts "Channel: #{tv.channel}"
puts "---------------"

puts "the end"


