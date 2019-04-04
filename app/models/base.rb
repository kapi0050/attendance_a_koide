class Base < ApplicationRecord
  validates :base_number, length: { in: 1..50 }, allow_blank: true
  validates :base_name, length: { in: 2..50 }, allow_blank: true
  validates :attendance_type, length: { in: 2..50 }, allow_blank: true
  
end
