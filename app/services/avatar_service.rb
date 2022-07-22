class AvatarService
  def self.get_url(url)
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_characters_by_nation(nation)
    get_url("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}")
  end
end