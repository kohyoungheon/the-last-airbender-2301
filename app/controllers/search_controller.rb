class SearchController < ApplicationController
  def index
    @nation = params[:nation].titleize.gsub("+", " ")
    @facade = AvatarFacade.new(params)
  end
end