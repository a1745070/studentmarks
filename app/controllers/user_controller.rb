class UserController < ApplicationController
  def export_csv
    respond_to do |format|
      format.html
      format.csv { send_data User.to_csv, filename: "all-student-marks-#{Date.today}.csv" }
    end
  end
end
