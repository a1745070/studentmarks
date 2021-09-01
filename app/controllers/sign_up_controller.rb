class SignUpController < ApplicationController
  def signup
  end

  def newUser
    User.create(@user)
    redirect_to '/sign_up/signup'
  end
end
