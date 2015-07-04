class Task < ActiveRecord::Base
  belongs_to :user
  validates :description, presence: true
  before_create :default_priority


 def default_priority
  self.priority = 'easy'
 end


end