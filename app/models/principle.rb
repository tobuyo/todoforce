class Principle < ApplicationRecord
  validates :content, length: { maximum: 40 }
  validates :name, presence: true
end
