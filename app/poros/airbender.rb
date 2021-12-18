class Airbender
  attr_reader :name, :allies, :affiliation, :enemies, :photoUrl

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @affiliation = data[:affiliation]
    @enemies = data[:enemies]
    @photoUrl = data[:photoUrl]
  end
end
