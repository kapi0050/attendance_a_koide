class AddWorkerNumberToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :work_number, :integer, default: 12345
    add_column :users, :worker_id, :string, default: "aaa001"
  end
end
