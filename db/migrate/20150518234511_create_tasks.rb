class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :description
      t.string :start_date
      t.string :due_date 
      t.timestamps
    end
  end
end
