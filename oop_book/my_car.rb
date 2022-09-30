class MyCar
  attr_accessor :color, :model, :speed, :on
  attr_reader :year

  def self.gas_mileage(total_miles, gallons_gas)
    return total_miles.to_f/gallons_gas
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @speed = 0
    start_car
  end


  def speed_up(miles_per_hour)
    if @on
      @speed += miles_per_hour
      puts "Speed: @speed"
    else
      puts "... car is not on."
    end
  end

  def brake(miles_per_hour)
    if @on
      @speed -= miles_per_hour
      @speed = 0 if @speed < 0
      puts "Speed: @speed"
    else
      puts "... car is not on."
    end
  end

  def shut_off_car
    @on = false
    puts "Car is now off."
  end

  def start_car
    @on = true
    puts "**Vrrrr, engine revs**"
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def spray_paint(color)
    @color = color
  end

  def to_s
    "#{@model}, #{@year}, #{@color}"
  end

end

lumina = MyCar.new(1997, 'chevy lumina', 'white')

lumina.spray_paint('black')
puts lumina.color
puts lumina.year
puts lumina