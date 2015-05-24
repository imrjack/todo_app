class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :time_zone
      t.timestamps
    end
  end
end
      