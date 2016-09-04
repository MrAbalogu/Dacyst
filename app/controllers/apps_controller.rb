class AppsController < ApplicationController

  def create 
  	@user = App.find(params[:user_id])
  	@user_app =@user.apps.create(apps_params)
  	flash[:notice] = "Application has been created"
  	redirect_to @user 
  end 	

  def destroy 
  	@user = App.find(params[:user_id])
  	@user_app =@user.apps.destroy
  	flash[:notice] = "Application has been deleted"
  	redirect_to @user 
  end 

  private 

  def apps_params 
  	params.require(:app).permit(:my_type)
  end 	
end
