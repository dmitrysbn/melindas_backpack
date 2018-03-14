class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def weather
    @attributes[:weather]
  end

  def day_of_week
    @attributes[:day_of_week]
  end

  def prepare
    add_clothing
    add_gym_shoes
    add_lunch
  end

  # Prints a summary packing list for Melinda's backpack
  def summary_of_items
    summary = []
    summary << "Melinda, here's your packing list!"
    summary << "Day: #{day_of_week}, Weather: #{weather}"
    summary << ""

    @items.each do |item|
      summary << "- #{item}"
    end
    summary.join("\n")
  end

  def add_clothing
    @items << 'pants'
    @items << 'shirt'

    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    end
  end

  def add_gym_shoes
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  def add_lunch
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

end
