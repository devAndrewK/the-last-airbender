require 'rails_helper'

RSpec.describe 'AvatarFacade' do
  it '#create_characters_by_nation' do
    characters = AvatarFacade.create_characters_by_nation("Fire Nation")
    expect(characters).to be_all Character
  end
end