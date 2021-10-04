class ApplicationController < ActionController::Base
  require 'csv'
  include ActionController::MimeResponds

  # Function name: ApplicationController.RoleCheck(object)
  # Summary: It gets called by visiting any page and by LoginController.check().
  #          It checks if the user object in sessions is either:
  #          nil? (returns 0) | student? (returns 1) | CC? (returns 2)
  #
  def self.RoleCheck(user)
    puts "RoleCheck++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    if user.blank? #not logged in
      return 0
    elsif user[0].role[:role] == "Student" #if student
      return 1
    else #else must be course coordinator
      return 2
    end
  end

end #end of applicationController.class


