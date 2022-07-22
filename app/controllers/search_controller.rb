class SearchController < ApplicationController
  def index
    @characters = AvatarFacade.create_characters_by_nation(params[:nation])
  end
end
