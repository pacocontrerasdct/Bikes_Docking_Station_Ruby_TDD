require_relative './spec_helper'

describe Garage do
  let(:garage) { Garage.new }
  
  it 'should be empty at the beginning' do
    expect(garage.bikes_count).to eq 0
  end

  it 'should be able to admit a broken bike' do
    bike = Bike.new

    broken_bike = bike
    broken_bike.break

    garage.dock bike if broken_bike.broken? == true

    expect(garage.bikes_count).to eq 1
  end

  it 'should be able to fix a broken bike and load into the van' do
    bike = Bike.new
    van = Van.new

    broken_bike = bike
    broken_bike.fix
    van.load bike if broken_bike.broken? == false

    garage.release bike if van.load bike

    expect(garage.bikes_count).to eq 0
  end

end