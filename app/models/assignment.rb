class Assignment < ApplicationRecord
  belongs_to :user

  #self.assignments = "assignments"

  def self.admin
    # self.Assignment.all
    @assignments = Assignment.all
  end

  def self.create
    #Assignment.create(assignment_params)
    self.Assignment.new
  end

  def edit
    session[:id] = params[:id]
  end

  def show
  end

  def self.update(assignment_params)
    #@assignments = Assignment.where(id: session[:id])
    #respond_to do |format|
      if self.update
        format.html do
          redirect_to '/assignment/admin'
        end
      end
      #end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to href="/admin", notice: "Student submission was successfully removed from the Database."}
      format.json { head :no_content }
    end
  end

  def assignment_params
    params.permit(:courseid, :assignmentid, :assignmentname, :assignmentdescr, :grade, :mark, :comments)
  end

end
