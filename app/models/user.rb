class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :incidents

  mount_uploader :avatar, AvatarUploader

  # validates :first_name, :last_name, presence: true

  geocoded_by :address
  after_validation :geocode
end
