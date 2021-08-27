class User < ApplicationRecord
  has_one :role
  has_many :courses, through: :enrolments
  has_many :assignments, through: :tasks
  has_many :tasks
  has_many :enrolments

  def self.func
    @user = User.find_by_id(7)
    puts "+++++++++++++++++++++++++++++++++++++++++++++"
    puts @user.role[:role]
  end
end