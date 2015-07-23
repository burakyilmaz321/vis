class UserFirm < ActiveRecord::Base
  has_many :users, dependent: :destroy
  accepts_nested_attributes_for :users, reject_if: :reject, allow_destroy: true
  validates :name, presence: true
  validates :city, presence: true
    
  def reject(attributes)
    attributes['name', 'email'].blank?
  end
end
