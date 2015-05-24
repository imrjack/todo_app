class AddDueDateToTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :due_date, :string
    add_column :tasks, :due_date, :datetime
  end
end
