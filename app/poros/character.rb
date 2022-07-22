class Character
  attr_reader :name, :id, :allies, :affiliation, :enemies

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @allies = data[:allies]
    @affiliation = data[:affiliation]
    @enemies = data[:enemies]
  end
end