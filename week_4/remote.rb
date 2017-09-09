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
  def initialize(power,volume,channel)
  @power = power
  @volume = volume
  @channel = channel
  end
  def power
    power_on = false 
    power_on = !power_on if @power ="toggle_power"
    return power_on
  end
  def volume
    volume_level = 0
    if @volume = "volume_up"
      return volume_level + 1 
    end
    return volume_level - 1 if @volume ="volume_down"
  end
  def channel
    channel_number = 2 
    channel_number = channel_number + 1 if @channel="channel_up"
    channel_number = channel_number - 1 if @channel="channel_down"
    return channel_number
  end
end

control = Tv.new("toggle_power","volume_down","channel_up")
p control
p control.power
p control.volume 
p control.channel




class Tv
  def initialize(power,volume,channel)
  @power = power
  @volume = volume
  @channel = channel
  end
end
  
  