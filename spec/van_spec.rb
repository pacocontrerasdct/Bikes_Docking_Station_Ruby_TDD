require_relative './spec_helper'

describe Van do

  it 'should be empty at the begining' do
    van = Van.new
    expect(van.bikes_in_the_Van_count).to eq 0
  end

  it 'should be able to carry on bikes' do
    van = Van.new
    bike = Bike.new

    van.carry_on(bike)

    expect(van.bikes_in_the_Van_count).to eq 1
  end


end