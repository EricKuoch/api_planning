class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events
  enum status: [:user, :admin]
  enum state: [:active, :inactive]
  scope :admin, -> { where(status:"admin") }
  scope :monthly_events, -> { where(event_date: Date.today.at_beginning_of_month..Date.today.at_end_of_month) }

end
