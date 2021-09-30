class Mark < ApplicationRecord
  belongs_to :task
  has_many :mark_historys
  after_save :save_history

  private
  def save_history
    mark_historys.create(new_mark: mark, comment: comment)
  end

end
