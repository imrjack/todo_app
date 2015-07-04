class AddTextToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :task_id, :integer
    add_column :notes, :description, :string
  end
end
