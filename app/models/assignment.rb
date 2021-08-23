class Assignment < ApplicationRecord
  has_one :User

  self.assignment = "assignment"

  def admin
    self.Assignment.all
  end

  def create
    #Assignment.create(assignment_params)
    self.Assignment.new
  end

  def edit
    session[:id] = params[:id]
  end

  def show
  end

  def update
    @assignments = Assignment.where(id: session[:id])
    respond_to do |format|
      if self.update
        format.html do
          redirect_to '/assignment/admin'
        end
      end
    end
  end

  def destroy
    @assignments.destroy
    respond_to do |format|
      format.html { redirect_to href="/admin", notice: "Student submission was successfully removed from the Database."}
      format.json { head :no_content }
    end
  end

  def assignment_params
    params.permit(:courseid, :assignmentid, :assignmentname, :assignmentdescr, :grade, :mark, :comments)
  end

end
