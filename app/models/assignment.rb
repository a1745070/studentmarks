class Assignment < ApplicationRecord
  belongs_to :course
  has_one :mark
  has_many :tasks
  has_many :users, through: :tasks

  #def self.goto(id)
    #Assignment.all
    #redirect_to :admin
  #  Task.includes(:assignment , :user, :mark).find_by(id: id)
  #end

  def self.student(studentid)
    Task.includes(:assignment , :user, :mark).where(user_id: User.select(:id).where(studentid: studentid))
  end

  def self.admin(id)
    #Task.includes(:assignment , :user, :mark).find_by_id(id: session)

    #Task.includes(:assignment , :user, :mark).all

    if id == -1
      Task.includes(:assignment , :user, :mark).all
    else
      Task.includes(:assignment , :user, :mark).where(assignment_id: id)
    end
    #Task.includes(:assignment , :user, :mark).find_by(id: id)
    #if session == -1
      #@assignment = Task.includes(:assignment , :user, :mark).all
      #@allassignments = Assignment.all
      #@allassignments = Task.includes(:assignment , :user, :mark).all

      #else
      #@allassignments = Task.includes(:assignment , :user, :mark).all
      #@assignment = Task.includes(:assignment , :user, :mark).find_by(assignment_id: session)
      #@assignment = Task.includes(:assignment , :user, :mark).all
      #@allassignments = Assignment.all
      #end

    # @allassignments = Assignment.all
    #@allassignments = Task.includes(:assignment , :user, :mark).all
    #@assignment = Task.includes(:assignment , :user, :mark).find_by(assignment_id: session)
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

  def self.update(id , params)
     assignment = Mark.find_by(task_id: id)

     if assignment == nil
       puts 'why???? tho'
     end
     assignment.update_attribute(:mark, params[:mark])
     assignment.update_attribute(:comment, params[:comment])

     params[:mark] = params[:mark].to_i

     if params[:mark] < 50
       assignment.update_attribute(:grade, "F")
     end
     if params[:mark] >= 50 && params[:mark] < 65
       assignment.update_attribute(:grade, "P")
     end
     if params[:mark] >= 65 && params[:mark] < 75
       assignment.update_attribute(:grade, "C")
     end
     if params[:mark] >= 75 && params[:mark] < 85
       assignment.update_attribute(:grade, "D")
     end
     if params[:mark] >= 85
       assignment.update_attribute(:grade, "HD")
     end

     #if assignment.mark < 50
     #  assignment.update_attribute(:grade, "F")
     # end
     #if assignment.mark >= 50 && assignment.mark < 65
     # assignment.update_attribute(:grade, "P")
     #end
     #if assignment.mark >= 65 && assignment.mark < 75
     #assignment.update_attribute(:grade, "C")
     #end
     #if assignment.mark >= 75 && assignment.mark < 85
     # assignment.update_attribute(:grade, "D")
     #end
     #if assignment.mark >= 85
     # assignment.update_attribute(:grade, "HD")
     #end

  end

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
