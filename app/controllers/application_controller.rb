class ApplicationController < ActionController::Base
  require 'csv'
  include ActionController::MimeResponds
  before_action :RoleCheck
  # Function name: ApplicationController.RoleCheck(object)
  # Summary: It gets called by visiting any page and by LoginController.check().
  #          It checks if the user object in sessions is either:
  #          nil? redirects to login | student? (returns 1) | CC? (returns 2)
  #
  def RoleCheck
    puts "RoleCheck++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    @user = User.where(studentid: session[:user])
    if @user.blank? #not logged in
      puts "RoleCheck == none"
      flash[:alert] = "Error"
      redirect_to root_url
    elsif @user[0].role[:role] == "Student" #if student
      puts "RoleCheck == student"
      session[:role] = 1
      return 1
    else #else must be course coordinator
      puts "RoleCheck == CC"
      session[:role] = 2
      return 2
    end
  end

end #end of applicationController.class


