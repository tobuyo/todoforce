class Principle < ApplicationRecord
  belongs_to :user
  validates :content, length: { maximum: 40 }
  validates :name, presence: true
end
