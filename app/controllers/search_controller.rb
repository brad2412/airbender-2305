class SearchController < ApplicationController
  def index
    @characters = CharacterService.fetch_characters(params)
  rescue StandardError => e
    flash[:alert] = e.message
    redirect_to root_path
  end
end