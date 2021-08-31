class Assignment < ApplicationRecord
  belongs_to :course
  has_one :mark
  has_many :tasks
  has_many :users, through: :tasks

  def self.admin(session)
    #Task.includes(:assignment , :user, :mark).find_by_id(id: session)

    if session == -1
      @assignment = Task.includes(:assignment , :user, :mark).all
      #@allassignments = Assignment.all
      @allassignments = Task.includes(:assignment , :user, :mark).all
    end

    # @allassignments = Assignment.all
    @allassignments = Task.includes(:assignment , :user, :mark).all
    @assignment = Task.includes(:assignment , :user, :mark).find_by(assignment_id: session)
    #Assignment.assignmentname
    #@task = Task.where(assignment_id: 1)
    #@user = User.all
  end

  #def self.admin
    #@assignment = Task.includes(:assignment , :user, :mark).all
    #@allassignments = Assignment.all
    #end

  #def self.create(assignment_params)
    #Assignment.create(assignment_params)
    # self.Assignment.new
  #end

  def edit
    session[:id] = params[:id]
  end

  def show
  end

  #def self.update(id , params)
    # assignment = Assignment.find_by(id: id)
    # assignment.update_attribute(:mark, params[:mark])
    # assignment.update_attribute(:comments, params[:comments])
    # if assignment.mark < 50
    #   assignment.update_attribute(:grade, "F")
    #  end
    # if assignment.mark >= 50 && assignment.mark < 65
    #  assignment.update_attribute(:grade, "P")
    # end
    #if assignment.mark >= 65 && assignment.mark < 75
    # assignment.update_attribute(:grade, "C")
    #end
    #if assignment.mark >= 75 && assignment.mark < 85
    #  assignment.update_attribute(:grade, "D")
    #end
    #if assignment.mark >= 85
    #  assignment.update_attribute(:grade, "HD")
    #end

  #end

  def destroy
    #respond_to do |format|
    #  format.html { redirect_to href="/admin", notice: "Student submission was successfully removed from the Database."}
    #  format.json { head :no_content }
    #end
  end

  #def assignment_params
    #params.permit(:courseid, :assignmentid, :assignmentname, :assignmentdescr, :grade, :mark, :comments)
  #params.permit(:course_id, :assignmentname, :assignmentdesc, :weight)
  #end

end
