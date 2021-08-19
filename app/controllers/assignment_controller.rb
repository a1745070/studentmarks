class AssignmentController < ApplicationController
  before_action :set_assignments

  def set_assignments
    @assignments = Assignment.where(id: params[:id])
  end

  def admin
    @assignments = Assignment.all

    #@joined - User.left_joins(:Assignment).where(studentid: @all_ids, name: @all_students, comments:@all_comments,
    #grades: @all_grades)
  end

  def edit
  end

  def show
  end

  def update
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

  def assignment_params
    params.permit(:id, :courseid, :assignmentid, :assignmentname, :assignmentdescr, :grade, :mark, :comments)
  end

end
