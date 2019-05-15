class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, allow_blank: false,
                       inclusion: {
                         in: %w[chinese italian japanese french belgian],
                         message: 'Sorry, it is not a valid category'
                       }
end
