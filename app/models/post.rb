class Post < ApplicationRecord
  validates :title, presence: true
  #, format: {with: /[A-C]/}
  validates :slug, presence: true, uniqueness: true
  #validates :title, presence: true, length: {in: 2..25}
  validates :content, presence: true
  validates :rating, numericality: true
end
