class UserFirm < ActiveRecord::Base
  has_many :users, dependent: :destroy
  accepts_nested_attributes_for :users, allow_destroy: true
  validates :name, presence: true
  validates :city, presence: true
  
end
