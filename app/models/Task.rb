class Task < ActiveRecord::Base

  validates :description, presence: true
  before_create :default_priority


 def default_priority
  self.priority = 'easy'
 end


end