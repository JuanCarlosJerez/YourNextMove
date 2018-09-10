class AdminsController < ApplicationController
  before_action :admin_user

  def index
  end

  private 

  def admin_user
      unless current_user.admin? 
          redirect_to root_path
      end 
  end 

end
