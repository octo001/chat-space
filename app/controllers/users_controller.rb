class UsersController < ApplicationController

  def edit
  end

  def index
    
  end

  def update
    
  end

  private
  def user_params
    params.require(user).permit()
    
  end
end