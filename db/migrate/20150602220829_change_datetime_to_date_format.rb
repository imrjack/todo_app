class ChangeDatetimeToDateFormat < ActiveRecord::Migration
  def change
    remove_column :tasks, :due_date, :datetime
    add_column :tasks, :due_date, :date
    add_column :tasks, :due_time, :time

  end
end
