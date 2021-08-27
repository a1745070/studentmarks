class AssignmentController < ApplicationController

  def admin
    #@assignments = Assignment.all
    @assignments = Assignment.admin
    #@joined - User.left_joins(:Assignment).where(studentid: @all_ids, name: @all_students, comments:@all_comments,
    #grades: @all_grades)
  end

  def create
    # @assignments = Assignment.new
    Assignment.create(assignment_params)
  end

  def edit
    session[:id] = params[:id]
  end

  def show
  end

  def update
    Assignment.update(session[:id], assignment_params)
     respond_to do |format|
        format.html do
       redirect_to '/assignment/admin'
        end
      end
    # end
  end

  def destroy
    @assignments.destroy
    #respond_to do |format|
    # format.html { redirect_to href="/admin", notice: "Student submission was successfully removed from the Database."}
    # format.json { head :no_content }
    #end
  end

  def assignment_params
    #params.permit(:courseid, :assignmentid, :assignmentname, :assignmentdescr, :grade, :mark, :comments)
    params.permit(:course_id, :assignmentname, :assignmentdesc, :weight)
  end

end
