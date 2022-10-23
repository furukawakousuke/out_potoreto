class Poster < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :profile_image
         
  has_many :post_photos,dependent: :destroy
  has_many :relationships, foreign_key: :following_id
  has_many :reverse_of_relationships, class_name: 'Relationship',
  foreign_key: :follower_id
  has_many :comments,dependent: :destroy
  has_many :favorites,dependent: :destroy
  has_many :active_notifications, class_name: 'Notification', 
  foreign_key: :visitor_id, dependent: :destroy
  has_many :passive_notifications, class_name: 'Notification', 
  foreign_key: :visited_id, dependent: :destroy
  has_many :reports, class_name: "Report", 
  foreign_key: :reporter_id, dependent: :destroy
  has_many :reverse_of_reports, class_name: "Report", 
  foreign_key: :reported_id, dependent: :destroy
end
