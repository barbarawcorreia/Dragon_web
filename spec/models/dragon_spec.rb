require 'rails_helper'
require 'rspec/expectations'

describe Dragon do
  before(:each) do
    @pet = Dragon.new('Dolly','Babi')
  end

  it 'Should contains dragon name and dragon owner name' do
    name = 'Dolly'
    owner_name = 'Babi'
    # pet = Dragon.new(name,owner_name)
    expect(@pet.name).to eq name
    expect(@pet.owner_name).to eq owner_name
  end

  it 'should feed the dragon and tests variables in feed method' do
    # name = 'Dolly'
    # owner_name = 'Babi'
    # pet = Dragon.new(name,owner_name)
    @pet.feed
    expect(@pet.stuff_in_belly).to eq(9)
    expect(@pet.stuff_in_intestine).to eq(1)
  end

  it 'should make the baby asleep' do
    # name = 'Dolly'
    # owner_name = 'Babi'
    # pet = Dragon.new(name,owner_name)
    @pet.put_to_bed
    expect(@pet.asleep).to eq(false)
  end

  it 'should make the baby asleep' do
    # name = 'Dolly'
    # owner_name = 'Babi'
    # pet = Dragon.new(name,owner_name)
    @pet.put_to_bed
    expect(@pet.asleep).to eq(false)
  end

  # it 'should toss the baby dragon' do
  #   name = 'Dolly'
  #   owner_name = 'Babi'
  #   pet = Dragon.new(name,owner_name)
  #   pet.toss
  #   #####
  # end

  it 'should rock the baby dragon and test variable asleep' do
    # name = 'Dolly'
    # owner_name = 'Babi'
    # pet = Dragon.new(name,owner_name)
    @pet.rock
    expect(@pet.asleep).to eq(false)
  end
  #lembrete : fazer testes dos dragons blue e red.
end