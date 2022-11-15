class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    self.bike.price + self.total_weight * 2
  end

  def total_weight
    bike_weight + luggage_weight
  end

  def luggage_weight
    self.bike.luggage.weight
  end

  def bike_weight
    self.bike.weight
  end
end