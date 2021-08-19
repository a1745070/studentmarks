class AssignmentController < ApplicationController

  def admin
    @assignments = Assignment.all

    #@joined - User.left_joins(:Assignment).where(studentid: @all_ids, name: @all_students, comments:@all_comments,
    #grades: @all_grades)
  end

  def edit
    # supposedly edits the marks and the comments
  end

  def show

  end

  def update
    respond_to do |format|
      if @assignments.update(movie_params)
        format.html { redirect_to @assignments, notice: "Assignment details was successfully updated." }
        format.json { render :show, status: :ok, location: @assignments }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assignments.errors, status: :unprocessable_entity }
      end
    end
  end

  def assignment_params
    params.require(:assignment).permit(:courseid, :assignmentid, :assignmentname, :assignmentdescr, :grade, :mark, :comments)
  end

end
