class User < ApplicationRecord
  has_one :role
  has_many :courses, through: :enrolments
  has_many :assignments, through: :tasks

  def self.func
    @user = User.find_by_id(1)
    puts "+++++++++++++++++++++++++++++++++++++++++++++"
    puts @user.role[:role]
  end
end