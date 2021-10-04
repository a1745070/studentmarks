class User < ApplicationRecord
  has_one :role
  has_many :courses, through: :enrolments
  has_many :assignments, through: :tasks
  has_many :tasks
  has_many :enrolments

  # Function name: User.to_csv()
  # Summary: It gets called by UserController.export_csv().
  #          It exports and downloads all student marks as a csv file
  #
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
        if @a3 == 3
          @a3 = @coursenames.where(id: 3).pluck(:coursename)
        end
        if @a3 == 4
          @a3 = @coursenames.where(id: 4).pluck(:coursename)
        end
        @a4 = user.assignment.assignmentname
        @a5 = user.mark.mark
        @a6 = user.mark.grade
        csv << [@a1,@a2,@a3,@a4,@a5,@a6]
      end
    end
  end


  # Function name: User.create(object)
  # Summary: It is not currently called.
  #          It creates a new user in the user table using the given parameters
  # todo: implement signup that calls this function. Currently not a user story
  #
  def self.create(params)
    user = User.new
    user.name = params[:name]
    user.studentid = params[:studentid]
    user.email = params[:email]
    user.password = params[:password]
    user.save
  end


  # Function name: User.login(object)
  # Summary: It gets called by LoginController.check().
  #          It checks if the student id in params is in the database
  #          then it checks if the password matches
  #          if successful, returns the user studentid
  #
  def self.login(params)
    puts "login+++++++++++++++++++++++++++++++++++++++++++++++++++++"
    #check if user studentid is in database
    if User.exists?(studentid: params[:studentid])
      puts "user exists"
      # if true then get the record
      @user = User.where(studentid: params[:studentid])
      # check password
      if @user[0][:password] == params[:password]
        puts "password match!"
        puts @user[0].role[:role]
        if @user[0].role[:role] == "Student"
          #redirect_to '/assignment/student'
          elsif @user[0].role[:role] == "Course Coordinator"
            #redirect_to '/assignment/admin'
        end
        return @user[0][:studentid]
      else
        #display incorrect password
        #redirect_to '/login/login'
      end
    else
      puts "user does not exist"
      # display error message user not found
      #redirect_to '/login/login'
    end
    puts "login.end+++++++++++++++++++++++++++++++++++++++++++++++++++++"
  end

end #end of User.class


