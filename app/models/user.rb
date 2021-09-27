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
   def self.create(params)
      user = User.new
      user.name = params[:name]
      user.studentid = params[:studentid]
      user.email = params[:email]
      user.password = params[:password]
      user.save
   end

  def self.login(params)
    puts "login+++++++++++++++++++++++++++++++++++++++++++++++++++++"
    #check if user id is in database
    if User.exists?(studentid: params[:studentid])
      puts "user exists"
      # if true then get the record
      @user = User.where(studentid: params[:studentid])
      # check password
      if @user[0][:password] == params[:password]
        @id = @user[0][:id]
        puts "password match!"
        puts @user[0].role[:role]
        if @user[0].role[:role] == "Student"
          @return = 1
          #redirect_to '/assignment/student'
          elsif @user[0].role[:role] == "Course Coordinator"
            @return = 2
            #redirect_to '/assignment/admin'
        end
        return @user
      else
        #display incorrect password
        @return = 0
        #redirect_to '/login/login'
      end
    else
      puts "user does not exist"
      # display error message user not found
      @return = 0
      #redirect_to '/login/login'
    end
    puts "login.end+++++++++++++++++++++++++++++++++++++++++++++++++++++"
  end

end


