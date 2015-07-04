class Note < ActiveRecord::Base
  belongs_to :task
  belongs_to :noteable, polymorphic: true
end