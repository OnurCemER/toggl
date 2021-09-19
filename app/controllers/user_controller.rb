class UserController < ApplicationController
  include UserHelper

  before_action :need_admin_credentials
  before_action :authenticate_user!

  def show
  end

  def edit
  end

  def destroy
  end

  def get_all_users
    @users = User.all
  end



end
