module UserHelper
  def need_admin_credentials
    admin = current_user.user_role
    if admin != "admin"
      redirect_to time_records_path, alert: "Credentials Not Allowed!"
    end
  end

  def get_user_first_name_of_time_record(time_record)
    User.where("id = ?", time_record.user_id)
  end

  def get_all_users
    User.all
  end
end