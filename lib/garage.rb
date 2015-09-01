class Garage

  def initialize
    @bikes = []
  end

  def bikes_count
    @bikes.count
  end

  def dock bike
    @bikes << bike
  end

end