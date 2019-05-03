class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'no bikes' if empty?
    Bike.new

    # replaced with the above guard clause ^
    # if bikes.empty?
    #   raise 'no bikes'
    # else
    #   Bike.new
    # end
  end


  def dock(bike)
    puts bikes.length
    #raise 'docking station full' if bikes.length == 20
    raise 'docking station full' if full?
    bikes << bike
    "Bike docked"
  end

private

  def full?
    bikes.length == 20
  end

  def empty?
    bikes.length == 0
  end

public

  def list_bikes
    bikes
  end
end

class Bike
  def working?
    true
  end
end
