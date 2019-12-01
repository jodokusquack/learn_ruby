class Timer
  attr_accessor :seconds

  def initialize seconds=0
    @seconds = seconds
  end

  def seconds= seconds
    @seconds = seconds
  end

  def time_string
    seconds = @seconds % 60
    minutes = @seconds.to_i / 60
    hours = 0
    while minutes > 60 do
      hours += 1
      minutes -= 60
    end
    return padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
  end

  def padded number
    if number >= 10
      return number.to_s
    else
      return "0" +  number.to_s
    end
  end


  
end

a = Timer.new

puts a.time_string
