class Car

  attr_reader :color, :engine_started
  attr_writer :color, :engine_started
  #if needed you can create your own method to write over attributes

  def initialize(color)
    @engine_started = false
    @color = color
  end

  # def engine_started
  #   return @engine_started
  # end

  # def color
  #   return @color
  # end

  # def color=(color)
  #   return @color = color
  # end

end
