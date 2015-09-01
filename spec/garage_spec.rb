require_relative './spec_helper'

describe Garage do
  let(:garage) { Garage.new }
  let(:bike) { Bike.new }
  let(:van) { Van.new }
  
  it 'should be empty at the beginning' do
    expect(garage.bikes_count).to eq 0
  end

  it 'should be able to admit a broken bike and download it from the van' do
    broken_bike = bike
    broken_bike.break
    garage.dock bike if broken_bike.broken? == true
    van.download bike
    
    expect(garage.bikes_count).to eq 1
  end

  it 'should be able to fix a broken bike and load it into the van' do
    broken_bike = bike
    broken_bike.fix
    van.load bike if broken_bike.broken? == false
    garage.release bike

    expect(garage.bikes_count).to eq 0
  end

end