require 'rails_helper'

RSpec.describe 'AvatarService' do
  describe 'characters by nation' do
    it 'gets characters by nation' do
      parsed_json = AvatarService.get_characters_by_nation("Fire Nation")
      expect(parsed_json).to be_an Array
      character = parsed_json.first
      expect(character).to include :_id
      expect(character).to include :name
      expect(character).to include :affiliation
      expect(character).to include :allies
      expect(character).to include :enemies
    end
  end

end