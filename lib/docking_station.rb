class DockingStation

  attr_reader :bikes
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = 20)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise 'no bikes' if empty?
    if bikes[0].condition == "working"
      bikes.shift
    else
      "no it's broken!"
    end


    # replaced with the above guard clause ^
    # if bikes.empty?
    #   raise 'no bikes'
    # else
    #   Bike.new
    # end
  end


  def dock(bike, message = 'working')
    #raise 'docking station full' if bikes.length == 20
    raise 'docking station full' if full?
    bike.condition = message
    bikes << bike
    if message == 'broken'
      "docked a broken bike"
    elsif message == 'working'
      "Bike docked"
    end
    # 'Toudou' = 'woof'
  end



private

  def full?
    bikes.length == DEFAULT_CAPACITY
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
  attr_accessor :condition

  def initialize
    @condition = 'working'
  end



  def working?
    condition
  end
end
