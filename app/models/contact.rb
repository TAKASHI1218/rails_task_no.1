class Contact < ApplicationRecord
  validates :Content, length: { in: 1..140 }
  validates :Content, presence: true
  validates :Content, length: { maximum: 140 }
end
