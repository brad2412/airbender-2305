class Character
  attr_reader :name, :photo_url, :allies, :enemies, :affiliations

  def initialize(attributes)
    @name = attributes["name"]
    @photo_url = attributes["photo_url"]
    @allies = attributes["allies"]
    @enemies = attributes["enemies"]
    @affiliations = attributes["affiliations"]
  end
end