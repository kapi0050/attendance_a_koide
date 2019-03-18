class AddWorkStartToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :work_start, :datetime, default: Time.zone.parse("2019/02/20 08:00")
    add_column :users, :work_end, :datetime, default: Time.zone.parse("2019/02/20 19:00")
  end
end
