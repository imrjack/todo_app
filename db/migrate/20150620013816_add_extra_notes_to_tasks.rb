class AddExtraNotesToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :extra_notes, :string
  end
end
