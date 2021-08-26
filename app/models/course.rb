class Course < ApplicationRecord
  has_many :assignments
  has_many :users , through: :enrolments

end
