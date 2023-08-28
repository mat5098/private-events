class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  validates :user_name, presence: true, uniqueness: true, length: {minimum:3, maximum:15}
  has_many :events, foreign_key: 'creator_id'

  has_many :admissions, foreign_key: 'creator_id'
  has_many :attended_events, through: :admissions, source: :event_attended

  has_many :invitees, foreign_key: :invitee_id

end
