class VisitorsController < ApplicationController

  def index 
  	@challenges = Challenge.all
  end 	

end
