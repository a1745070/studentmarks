class UserController < ApplicationController
  def user_params
    params.permit(:name, :studentid, :password, :email)
  end

  # Function name: UserController.export_csv()
  # Summary: It gets called by clicking the "export marks as csv" button.
  #          It calls User.to_csv()
  #
  def export_csv
    respond_to do |format|
      format.html
      format.csv { send_data User.to_csv, filename: "all-student-marks-#{Date.today}.csv" }
    end
  end

  def login
  end


end # end of UserController.class
