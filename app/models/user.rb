class User < ApplicationRecord
  has_one :role

  def self.func
    @user = User.find_by_id(1)
    puts "+++++++++++++++++++++++++++++++++++++++++++++"
    puts @user.role[:role]
  end
end