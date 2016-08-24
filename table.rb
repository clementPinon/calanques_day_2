class Table
  attr_reader :height, :width, :length, :material, :stands, :color
  attr_writer :height, :width, :length, :material, :stands

  def initialize
    # @height = 70
    # @width = 90
    # @length = 140
    @material = "wood"
    @stands = 4
    @color = "brown"
  end

  def is_table_stable
    if @stands == 4
      return true
    else
      return false
    end
  end

end
