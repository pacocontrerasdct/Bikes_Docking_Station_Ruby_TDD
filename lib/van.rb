class Van

  def initialize
    @bikes_in_the_Van = []
  end

  def bikes_in_the_Van_count
    @bikes_in_the_Van.count
  end

  def carry_on bike
    @bikes_in_the_Van << bike
  end

end