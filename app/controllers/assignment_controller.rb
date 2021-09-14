class AssignmentController < ApplicationController

  #def goto
    #@allassignments = Assignment.goto
  #  puts '++++Params id+++++++'
  #  puts '+++++++HAHAHAH FDSGFHDSHF'
  #  haha = params[:id]
  #  @assignment = Assignment.goto(haha)
  #  self.admin(@assignment)
  #  redirect_to :assignment_admin
  #end
  def student
    puts "student.html +++++++++++++++++++++++++++++++++++++++"
    @studentid = session[:studentid]
    @assignment = Assignment.student(@studentid)
  end

  def admin
    haha = params[:id]
    @averageassgrade = Assignment.averageassgrade()
    @averageexamgrade = Assignment.averageexamgrade()
    @averagecurrentgrade = Assignment.averagecurrentgrade(haha)
    #@assignments = Assignment.all
    #session[:id] = params[:id]
    #id = -1


    if params.has_key?(:id)
      @assignment = Assignment.admin(haha)

      if @assignment == nil
        #puts 'im stupid as hell'
      end

      #@currentassignment = @assignment.where({ id: haha}).first
      @title = ""
      @assignment.each do |help|
        @title = help.assignment.assignmentname
      end

      @currentassignment = @title


      #@currentassignment = @assignment.assignment.assignmentname.first
      #puts 'ARE WE STILL FRIENDS?'
      #puts @currentassignment

      #User.where({ name: "Joe", email: "joe@example.com" })
      # SELECT * FROM users WHERE name = 'Joe' AND email = 'joe@example.com'

    else
      @assignment = Assignment.admin(-1)
      @currentassignment = "All Assignments"
    end

    params[:id] = nil
    #@assignment = Assignment.admin
    #puts 'pls work'
    #puts params[:id]
    #puts 'haha'


    #@allassignments = Assignment.admin(id)
    # puts @allassignments

    #@joined - User.left_joins(:Assignment).where(studentid: @all_ids, name: @all_students, comments:@all_comments,
    #grades: @all_grades)
  end

  #def admin
  #  @assignment = Task.includes(:assignment , :user, :mark).all
  #  @allassignments = Assignment.admin
  #end

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
    #puts '++++++++++ whats aparams'
    #puts session[:id]
    params[:id] = session[:id]
    Assignment.update(params[:id], assignment_params)
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
    params.permit(:course_id, :assignmentname, :assignmentdesc, :weight, :mark, :comment, :id, :grade)
  end

end
