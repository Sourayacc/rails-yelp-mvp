class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CAT = ['chinese', 'italian', 'japanese', 'french', 'belgian']


  validates :address, presence: true
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: CAT }
end
