class User < ApplicationRecord
  has_one :role
  has_many :courses, through: :enrolments
  has_many :assignments, through: :tasks
  has_many :tasks
  has_many :enrolments

  def self.to_csv
    @all = Task.includes(:assignment , :user, :mark).all
    @coursenames = Course.all
    attributes = %w{studentid name coursename assignmentname mark grade}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      @all.each do |user|
        @a1 = user.user.studentid
        @a2 = user.user.name
        @a3 = user.assignment.course_id
        if @a3 == 1
          @a3 = @coursenames.where(id: 1).pluck(:coursename)
        end
        if @a3 == 2
          @a3 = @coursenames.where(id: 2).pluck(:coursename)
        end
        @a4 = user.assignment.assignmentname
        @a5 = user.mark.mark
        @a6 = user.mark.grade
        csv << [@a1,@a2,@a3,@a4,@a5,@a6]
      end
    end
  end
end