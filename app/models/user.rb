class User < ApplicationRecord
  validates :email, :first_name, :last_name, :password, :contact, presence: true
  has_many :userfeedbacks, dependent: :destroy
  accepts_nested_attributes_for :userfeedbacks, allow_destroy: true, reject_if: proc { |att| att['decription'].blank? }
end
