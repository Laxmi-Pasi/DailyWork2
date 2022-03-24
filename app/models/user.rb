class User < ApplicationRecord
  #validates :email, :first_name, :last_name, :password, :contact, presence: true
  mount_uploader :avatar, AvatarUploader
  mount_uploaders :avatars, AvatarUploader
  #validates :avatar, presence: true
  #serialize :avatars, JSON
end
