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




end