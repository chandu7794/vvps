class LoginController < ApplicationController

  def index
    render '/layouts/application'
  end

  def check_login
    user = User.where(email: params[:username].downcase.strip).last
    if user
      if user.password.blank?
        status =  "false"
        message = 'User must set password before first login'
      elsif user.password != params[:password]
        status =  "false"
        message =  'Password is incorrect'
      elsif !user.active
        status =  "false"
        message =  'Your account is deactivated please contact Admin'
      elsif user.password == params[:password]
        status =  "true"
        message = 'Successfully Logged in'
      end
    else
      status =  "false"
      message =  "Username does not exist"
    end
    render :json => {status: status, message: message}
  end


  def dashboard
    render partial: "/layouts/recent_activities"
  end


end
