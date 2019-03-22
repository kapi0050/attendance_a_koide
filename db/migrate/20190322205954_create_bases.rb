class CreateBases < ActiveRecord::Migration[5.1]
  def change
    create_table :bases do |t|
      t.integer :base_number, default: 12345
      t.string :base_name, default: "テスト"
      t.string :attendance_type, default: "テスト"

      t.timestamps
    end
  end
end
