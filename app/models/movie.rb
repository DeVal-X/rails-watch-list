class Movie < ApplicationRecord
  has_many :bookmarks
  # A movie must have a unique title and an overview.

  validates :overview, uniqueness: true
  validates :overview, presence: true
  validates :title, uniqueness: true
  validates :title, presence: true
end
