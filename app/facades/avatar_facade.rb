class AvatarFacade
  attr_reader :params

  def initialize(params)
    @params = params
  end


  def affiliations
    json = service.get_25_affiliations(@params[:nation])
    json.each do |affiliation|
      Affiliation.new(affiliation)
    end
  end

  def all_affiliations
    json = service.get_all_affiliations(params[:nation])
    json.each do |affiliation|
      Affiliation.new(affiliation)
    end
  end

  private 

  def service
   @_service ||= AvatarService.new
  end
end