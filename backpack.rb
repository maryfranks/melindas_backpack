class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare

    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    check_weather(weather)
    gym_shoes(day_of_week)
    pack_lunch(day_of_week)

  end

  def check_weather(weather)

    if weather == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end

  end

  def gym_shoes(day_of_week)

    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end

  end

  def pack_lunch(day_of_week)

    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif false
      @items << 'snacks'
    end

  end

  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
