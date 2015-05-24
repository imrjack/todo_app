class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.integer :user_id
      t.string :start_date
      t.string :due_date

      t.timestamps
    end
  end
end
