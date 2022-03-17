class User < ApplicationRecord
  validates :email, :first_name, :last_name, :password, :contact, presence: true
  has_one :article, dependent: :destroy
  delegate :title, to: :article
end
