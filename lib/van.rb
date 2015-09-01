class Van

  DEFAULT_CAPACITY = 5

  def initialize options = {}
    @van_capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes_in_the_Van = []
  end

  def bikes_in_the_Van_count
    @bikes_in_the_Van.count
  end

  def load bike
    raise 'Van is full' if full_capacity?
    @bikes_in_the_Van << bike
  end

  def download bike
    @bikes_in_the_Van.delete bike
  end

  def full_capacity?
    bikes_in_the_Van_count == @van_capacity
  end

end