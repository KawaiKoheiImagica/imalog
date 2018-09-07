class Shop < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  has_many :users
  has_many :commentlists, dependent: :destroy
  
end
