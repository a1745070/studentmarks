class LoginController < ApplicationController
  layout "index"
  def login
  end

  def logout
    session.data.delete :user
  end

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

  def user_params
    params.permit(:studentid, :password)
  end

end
