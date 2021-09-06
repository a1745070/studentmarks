class LoginController < ApplicationController
  def login
  end

  def check
    User.login(user_params)
    @return = User.returnlogin
    if @return == 0
      puts "returned 0"
      redirect_to '/login/login'
    end
    if @return == 1
      session[:role] = "Student"
      puts "returned 1" , session[:role]
      redirect_to '/assignment/student'
    end
    if @return == 2
      session[:role] = "Course Coordinator"
      puts "returned 2" , session[:role]
      redirect_to '/assignment/admin'
    end
  end

  def user_params
    params.permit(:studentid, :password)
  end

end
