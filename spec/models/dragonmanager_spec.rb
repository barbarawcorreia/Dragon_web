# frozen_string_literal: true

require 'rails_helper'
require 'rspec/expectations'

describe Dragon do
  before(:each) do
    pet = Dragon.new('Dolly', 'Babi') # Chama o dragon e o Dragon_manager
    @manager = Dragon_manager.new(pet)
  end

  it 'Should test recursivo method' do
    acao = '1'
    @manager.recursivo(acao)
    expect(@manager.recursivo).to respond_to(acao)
  end
end
