class ApplicationController < ActionController::Base
  require 'csv'
  include ActionController::MimeResponds

  def self.RoleCheck(user)
    puts "RoleCheck++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    if user[0].role[:role] == "Student"
      return 1
    elsif user[0].role[:role] == "Course Coordinator"
      return 2
    else
      return 0 #not logged in
    end
  end


end


