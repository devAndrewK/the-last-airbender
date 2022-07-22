class AvatarFacade
  def self.create_characters_by_nation(nation)
    json = AvatarService.get_characters_by_nation(nation)
    characters = json.map { |data| Character.new(data) }
  end
end