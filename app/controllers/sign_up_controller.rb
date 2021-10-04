# todo currently not used as is not a user story but tested functions and works as intended
class SignUpController < ApplicationController
  def user_params
    params.permit(:name, :studentid, :password, :email)
  end

  # Function name: SignUpController.signup()
  # Summary: Is not currently called.
  #
  def signup
  end

  # Function name: SignUpController.newUser()
  # Summary: Is not currently called.
  #          It calls User.create(object) and redirects to signup page
  #
  def newUser
    User.create(user_params)
    redirect_to '/sign_up/signup'
  end

end #end of SignUpController.class

