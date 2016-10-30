class Subject < ApplicationRecord
  has_many :books
  validates :name, presence: true, uniqueness: true #, format: { with: /a }
end
