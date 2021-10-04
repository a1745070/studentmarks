class LoginController < ApplicationController
  def user_params
    params.permit(:studentid, :password)
  end


  # Function name: LoginController.login()
  # Summary:
  # todo: Should this check if the person is logged in already and redirect accordingly?
  #
  def login
  end


  # Function name: LoginController.logout()
  # Summary: It gets called by clicking the logout button. It deletes the user object from sessions
  #
  def logout
    session.data.delete :user
  end


  # Function name: LoginController.check()
  # Summary: It gets called by submitting the login form. It saves the user as an object in sessions for later
  #          checking if they are a student or CC. It uses the user object saved in sessions and calls the
  #          ApplicationController.Rolecheck(object) to check if: invalid login? | student? | CC? and redirects
  #          accordingly
  #
  def check
    session[:user] = User.login(user_params)
    @return = LoginController.RoleCheck(session[:user])
    if @return == 0
      puts "returned 0 - invalid login details"
      redirect_to '/login/login'
    end
    if @return == 1
      puts "returned 1"
      redirect_to '/assignment/student'
    end
    if @return == 2
      puts "returned 2"
      redirect_to '/assignment/admin'
    end
  end


end #end of LoginController.class
