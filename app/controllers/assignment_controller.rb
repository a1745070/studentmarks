class AssignmentController < ApplicationController
  def assignment_params
    params.permit(:course_id, :assignmentname, :assignmentdesc, :weight, :mark, :comment, :id, :grade)
  end

  # Function name: AssignmentController.student()
  # Summary: It gets called by visiting assignment/student.html
  #          After passing role check, populates students assignments
  #
  def student
    if session[:role] != 1
      redirect_to root_url
    end
    puts "student.html +++++++++++++++++++++++++++++++++++++++"
    @studentid = session[:user]
    @assignment = Assignment.student(@studentid)
  end


  # Function name: AssignmentController.admin()
  # Summary: It gets called by visiting admin.html
  #          After passing role check, populates the cc students and related assignments
  #
  def admin
    if session[:role] != 2
      redirect_to root_url
    end
    parameters = params[:id]
    @averageassgrade = Assignment.averageassgrade()
    @averageexamgrade = Assignment.averageexamgrade()
    if params.has_key?(:id)
      @assignment = Assignment.admin(parameters)
      if @assignment == nil
      end
      @title = ""
      @assignment.each do |help|
        @title = help.assignment.assignmentname
      end
      @currentassignment = @title
      @averagecurrentgrade = Assignment.averagecurrentgrade(parameters)
    else
      @assignment = Assignment.admin(-1)
      @currentassignment = "All Assignments"
    end
    params[:id] = nil
  end


  def same
    parameters = params[:id]
    @assignment = Assignment.same(parameters)
    @userid = Assignment.userid(parameters)

  end


  # Function name: AssignmentController.create()
  # Summary: Currently is not called as not a user story
  #          creates a new assignment from parameters
  #
  def create
    Assignment.create(assignment_params)
  end


  # Function name: AssignmentController.edit()
  # Summary: Currently is not called as not a user story
  #          creates a new assignment from parameters
  #
  def edit
    session[:id] = params[:id]
  end


  # Function name: AssignmentController.show()
  # Summary: Currently is not called, placeholder only
  #
  def show
  end



  def update
    params[:id] = session[:id]
    Assignment.update(params[:id], assignment_params)
     respond_to do |format|
        format.html do
       redirect_to '/assignment/admin'
        end
     end
  end

  def destroy
    @assignments.destroy
    #respond_to do |format|
    # format.html { redirect_to href="/admin", notice: "Student submission was successfully removed from the Database."}
    # format.json { head :no_content }
    #end
  end

end #end of AssignmentController.class
