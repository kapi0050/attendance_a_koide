class User < ApplicationRecord
  has_many :attendances, dependent: :destroy # １対多の関連性を示すことが出来ます。
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  validates :department, length: { in: 3..50 }, allow_blank: true

  #def User.get_working_user
    
    #joins(:attendances).where(attendances:{day: Date.today, finished_at: nil}).where.not(works: {started_at: nil})
    
    #joins(:works).where(works:{day: Date.today, end_time: nil}).where.not(works: {start_time: nil})
  #end

end