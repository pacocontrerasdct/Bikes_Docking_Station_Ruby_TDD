class Van

  DEFAULT_CAPACITY = 5

  def initialize options = {}
    @van_capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes_in_the_van = []
  end

  def bikes_in_the_van_count
    @bikes_in_the_van.count
  end

  def load bike
    raise 'Van is full' if full_capacity?
    @bikes_in_the_van << bike
  end

  def download bike
    @bikes_in_the_van.delete bike
  end

  def full_capacity?
    bikes_in_the_van_count == @van_capacity
  end

end