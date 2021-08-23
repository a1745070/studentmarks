class User < ApplicationRecord
  has_many :user_assignments
  has_many :studentids, :through => :user_assignments
end
