require 'rails_helper'

RSpec.describe Character do
  it 'creates character from response' do
    data = { _id: '123', name: "Chan", type: 'character', allies: ['Ozai'], enemies: ['Earth Kingdom'], affiliation: 'Fire Nation Navy' }
    character = Character.new(data)

    expect(character.name).to eq('Chan')
    expect(character.type).to eq('character')
    expect(character.allies).to eq(['Ozai'])
    expect(character.enemies).to eq(['Earth Kingdom'])
    expect(character.affiliation).to eq('Fire Nation Navy')
  end
end