class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items

  def initialize(args)
    args = defaults.merge(args)
    @capacity = args[:initial_capacity]
    @items = args[:items]
  end

  def add(item)
    self.items << item
  end

  def weight
    self.items.size * 10
  end

  def defaults
    {:initial_capacity => DEFAULT_MAX_CAPACITY}
  end

end