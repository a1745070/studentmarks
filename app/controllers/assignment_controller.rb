class AssignmentController < ApplicationController

  def admin
    @assignments = Assignment.all
    #@joined - User.left_joins(:Assignment).where(studentid: @all_ids, name: @all_students, comments:@all_comments,
    #grades: @all_grades)
  end

  def create
    @assignments = Assignment.new
  end

  def edit
    session[:id] = params[:id]
  end

  def show
  end

  def update
    @assignments = Assignment.where(id: session[:id])
    respond_to do |format|
      if @assignments.update(assignment_params)
        format.html do
        redirect_to '/assignment/admin'
        end
        #format.json { render :admin, status: :ok, location: @assignments }
      else
        #format.html { render :edit, status: :unprocessable_entity }
        #format.json { render json: @assignments.errors, status: :unprocessable_entity }
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
