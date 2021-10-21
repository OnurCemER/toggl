class UserController < ApplicationController
  include UserHelper

  before_action :need_admin_credentials
  before_action :authenticate_user!

  def show
  end


  def edit
  end

  def destroy
    User.find(params[:id]).destroy
    TimeRecord.where("user_id=?", params[:id]).destroy_all
    respond_to do |format|
      format.html { redirect_to user_get_all_users_url, notice: "User was successfully destroyed."}
    end
  end

  def index
    @users = User.all
  end



end
