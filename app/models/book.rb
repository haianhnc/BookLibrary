# https://www.tutorialspoint.com/ruby-on-rails/rails-layouts.htm
class Book < ApplicationRecord
  belongs_to :subject
  validates :title, presence: true
  validates :price, presence: true
  validates :description, length: {maximum: 10}
end
