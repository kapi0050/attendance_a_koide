class AddWorkingToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :working, :string, default: "退社中"
  end
end
