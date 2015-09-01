require_relative './spec_helper'

describe Van do

  let(:van) { Van.new({capacity: 5}) }
  let(:bike) { Bike.new }
  let(:garage) { Garage.new }
  let(:station) { DockingStation.new }
  
  def fill_van van
    5.times { van.load(Bike.new) }
  end

  it 'should be empty at the begining' do
    expect(van.bikes_in_the_van_count).to eq 0
  end

  # This Van Loads bikes both at Docking Station and at Garage
  it 'should be able to load bikes' do
    van.load(bike)

    expect(van.bikes_in_the_van_count).to eq 1
  end

  # This Van Downloads bikes both at Docking Station and at Garage
  it 'should be able to download bikes' do
    van.download(bike)

    expect(van.bikes_in_the_van_count).to eq 0
  end

  it 'should know when it has reached its capacity' do
    fill_van van

    expect(van.full_capacity?).to be true
  end

  # When load broken bikes count+1 in Van counter and count-1 in Docking counter
  it 'should load only broken bikes at docking station' do
    broken_bike = bike
    broken_bike.break

    van.load bike if broken_bike.broken? == true
    station.release bike
    
    expect(van.bikes_in_the_van_count).to eq 1
  end

  # When load fixed bikes count+1 in Van counter and count-1 in Garage counter
  it 'should load only fixed bikes at Garage' do
    fixed_bike = bike
    fixed_bike.fix

    van.load bike if fixed_bike.broken? == false
    garage.release bike

    expect(van.bikes_in_the_van_count).to eq 1
  end

end