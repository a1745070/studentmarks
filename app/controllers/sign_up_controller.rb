class SignUpController < ApplicationController
  def signup
  end

  def newUser
    User.create(user_params)
    redirect_to '/sign_up/signup'
  end

  def user_params
    #params.permit(:courseid, :assignmentid, :assignmentname, :assignmentdescr, :grade, :mark, :comments)
    params.permit(:name, :studentid, :password, :email)
  end

end

