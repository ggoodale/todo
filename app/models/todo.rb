class Todo < ActiveRecord::Base
  
  validates_presence_of :body
  
  def overdue?
    !due.nil? && due < Time.now
  end
end
