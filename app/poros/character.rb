class Character
  attr_reader :name, :id, :allies, :affiliation, :enemies, :image

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @allies = data[:allies]||= ["None"]
    @affiliation = data[:affiliation]
    @enemies = data[:enemies] ||= ["None"]
    @image = data[:photoUrl]
    if @allies.empty?
      @allies = ['None']
    end
    if @enemies.empty?
      @enemies = ['None']
    end
  end
end