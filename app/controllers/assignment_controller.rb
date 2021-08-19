class AssignmentController < ApplicationController

  def admin
    @assignments = Assignment.all

    #@joined - User.left_joins(:Assignment).where(studentid: @all_ids, name: @all_students, comments:@all_comments,
    #grades: @all_grades)
  end

  def edit
    # supposedly edits the marks and the comments
  end
end
