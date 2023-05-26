class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @facade = AvatarFacade.new(params)
  end
end