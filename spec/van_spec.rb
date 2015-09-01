require_relative './spec_helper'

describe Van do

  let(:van) { Van.new({capacity: 5}) }
  let(:bike) { Bike.new }
  
  def fill_van van
    5.times { van.load(Bike.new) }
  end

  it 'should be empty at the begining' do

    expect(van.bikes_in_the_Van_count).to eq 0
  end

  it 'should be able to load bikes' do
    van.load(bike)

    expect(van.bikes_in_the_Van_count).to eq 1
  end

  it 'should be able to download bikes' do
    van.download(bike)

    expect(van.bikes_in_the_Van_count).to eq 0
  end

  it 'should know when it has reached its capacity' do
    fill_van van

    expect(van.full_capacity?).to be true
  end


end