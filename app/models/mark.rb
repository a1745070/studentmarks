class Mark < ApplicationRecord
  belongs_to :task
  has_many :mark_historys
end
