class Mark < ApplicationRecord
  belongs_to :task
  has_many :mark_historys
  before_save :save_history

  private
  def save_history
    mark_historys.create(mark: mark, comment: comment)
  end

end
