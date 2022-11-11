# Pannier

class Pannier

  MAX_CARGO_ITEMS = 10

  attr_accessor :cargo_contents

  def initialize(cargo_contents = [])
    @cargo_contents = cargo_contents
  end

  def capacity
    MAX_CARGO_ITEMS
  end

  def remaining_capacity
    MAX_CARGO_ITEMS - self.return_cargo_size
  end

  def return_cargo_size
    @cargo_contents.size
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end
end