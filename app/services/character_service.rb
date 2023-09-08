# app/services/character_service.rb
class CharacterService
  def self.fetch_characters(params)
    page = params[:page] || 1
    connection = Faraday.new(url: "https://last-airbender-api.fly.dev")
    response = connection.get("/api/v1/characters", { page: page })

    if response.status == 200
      data = JSON.parse(response.body)
      characters = data["data"].map { |character_data| Character.new(character_data) }
      return characters
    end
  end
end
