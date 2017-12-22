# frozen_string_literal: true

require 'rails_helper'
require 'rspec/expectations'

describe Dragon do
  let(:pet) { Dragon.new('Dolly', 'Babi') }

  it 'will contains dragon name and owner name' do
    name = 'Dolly'
    owner_name = 'Babi'
    expect(pet.name).to eq name
    expect(pet.owner_name).to eq owner_name
  end

  it 'will feed the dragon and test variables' do
    pet.feed
    expect(pet.stuff_in_belly).to eq(9)
    expect(pet.stuff_in_intestine).to eq(1)
  end

  it 'will make the baby asleep' do
    pet.put_to_bed
    expect(pet.asleep).to eq(false)
  end

  it 'will rock the dragon and test variable asleep' do
    pet.rock
    expect(pet.asleep).to eq(false)
  end
  # lembrete : fazer testes dos dragons blue e red.
end
