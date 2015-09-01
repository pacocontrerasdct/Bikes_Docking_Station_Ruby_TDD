require_relative './spec_helper'

describe Van do

  let(:van) { Van.new }
  let(:bike) { Bike.new }
  
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


end