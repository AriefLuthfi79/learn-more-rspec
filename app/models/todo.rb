class Todo < ApplicationRecord
  belongs_to :user

  def completed!
    update_attributes(completed_at: Time.current)
  end

  def completed?
    completed_at?
  end

  def incompleted!
    update_attributes(completed_at: nil)
  end
end
