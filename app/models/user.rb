class User < ActiveRecord::Base
  belongs_to :user_firm
  validates_presence_of :user_firm
  validates :name,  presence: true
  validates :email, presence: true
  has_secure_password
end
