class Assignment < ApplicationRecord
  belongs_to :course
  has_many :users, through: :tasks
  has_one :mark
  #self.assignments = "assignments"

  def self.admin
    # self.Assignment.all
    #@assignments = Assignment.all
  end

  #def self.create
    #Assignment.create(assignment_params)
    # self.Assignment.new
  #end

  def edit
    session[:id] = params[:id]
  end

  def show
  end

  def self.update(id , params)
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

  end

  def destroy
    #respond_to do |format|
    #  format.html { redirect_to href="/admin", notice: "Student submission was successfully removed from the Database."}
    #  format.json { head :no_content }
    #end
  end

  def assignment_params
    #params.permit(:courseid, :assignmentid, :assignmentname, :assignmentdescr, :grade, :mark, :comments)
  end

end
