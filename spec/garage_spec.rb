require_relative './spec_helper'

describe Garage do

  it 'should be empty at the beginning' do
    garage = Garage.new
    expect(garage.bikes_count).to eq 0
  end

  it 'should be able to admit a bike' do
    garage = Garage.new
    bike = Bike.new
    garage.dock bike

    expect(garage.bikes_count).to eq 1
  end




end