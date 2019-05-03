require 'docking_station'

describe DockingStation do
  # it 'does it release' do
  #   ds = DockingStation.new
  #   expect(ds.release_bike).to eq(true)
  # end

  it 'does it respond to release' do
    expect(DockingStation.new(10)).to respond_to(:release_bike)
  end

  # it 'gives me a bike' do
  #   ds = DockingStation.new(10)
  #   bike = Bike.new
  #   #bike = ds.release_bike
  #   expect(bike.working?).to eq(true)
  # end

  it 'docks a bike' do
    ds = DockingStation.new(10)
    bike = Bike.new
    #bike = ds.release_bike
    expect(ds.dock(bike)).to eq('Bike docked')
  end

  it 'lists docked bikes' do
    ds = DockingStation.new(10)
    bike = Bike.new
    #bike = ds.release_bike
    ds.dock(bike)
    expect(ds.list_bikes).to eq([bike])
  end

  it 'gives an error if no bikes docked' do
    ds = DockingStation.new(10)
    expect{ds.release_bike}.to raise_error ('no bikes')
  end

  it 'gives an error when docking station is full at 20' do
    ds = DockingStation.new(10)
    20.times do
      ds.dock(Bike.new)
    end
    expect{ds.dock(Bike.new)}.to raise_error ('docking station full')
  end

  it 'create docking station with given capacity' do
    ds = DockingStation.new(10)
    expect(ds.capacity).to eq(10)
  end

  it 'gives a default capacity of 20' do
    expect(subject.capacity).to eq(20)
  end

  it 'return a broken bike' do
    bike = Bike.new
    station = DockingStation.new
    expect(station.dock(bike, 'broken')).to eq ('docked a broken bike')
  end

  it 'keeps a broken bike' do
    bike = Bike.new
    station = DockingStation.new
    station.dock(bike, 'broken')
    expect(station.release_bike).to eq ('no it\'s broken!')
  end

  # it 'bikes are listed as working or broken' do
  #   bike = Bike.new
  #   station = DockingStation.new
  #   station.dock(bike, 'broken')
  #   expect(station.list_bikes).to eq([bike, 'broken'])
  # end

  # it 'should have an argument that gives the capacity' do
  #   expect(DockingStation).to respond_to(:new).with(1).argument
  # end
end
